#include <delay.h>
#include <gpio.h>
#include <pwr_clk_mgmt.h>
#include <rf.h>
#include <rng.h>
#include <watchdog.h>

#define IN_PIN GPIO_PIN_ID_P0_6
#define RED_PIN GPIO_PIN_ID_P1_4
#define GREEN_PIN GPIO_PIN_ID_P1_3
#define BLUE_PIN GPIO_PIN_ID_P1_2
#define TOLERANCE 20
#define MAX_TOLERANCE (100 + TOLERANCE) / 100
#define MIN_TOLERANCE (100 - TOLERANCE) / 100
#define FRAME_END_LOWS 200
#define LEADER_HIGHS 78
#define MAX_LEADER_HIGHS LEADER_HIGHS * MAX_TOLERANCE
#define MIN_LEADER_HIGHS LEADER_HIGHS * MIN_TOLERANCE
#define LEADER_LOWS 78
#define MAX_LEADER_LOWS LEADER_LOWS * MAX_TOLERANCE
#define MIN_LEADER_LOWS LEADER_LOWS * MIN_TOLERANCE
#define BODY_CUSTOM_BITS 8
#define BODY_DATA_BITS 8
#define BODY_BITS (BODY_CUSTOM_BITS * 2) + (BODY_DATA_BITS * 2)
#define BIT_HIGHS 10
#define MAX_BIT_HIGHS BIT_HIGHS * MAX_TOLERANCE
#define MIN_BIT_HIGHS BIT_HIGHS * MIN_TOLERANCE
#define DATA0_BIT_LOWS 8
#define MAX_DATA0_BIT_LOWS DATA0_BIT_LOWS * MAX_TOLERANCE
#define MIN_DATA0_BIT_LOWS DATA0_BIT_LOWS * MIN_TOLERANCE
#define DATA1_BIT_LOWS 28
#define MAX_DATA1_BIT_LOWS DATA1_BIT_LOWS * MAX_TOLERANCE
#define MIN_DATA1_BIT_LOWS DATA1_BIT_LOWS * MIN_TOLERANCE
#define WATCHDOG_TIMEOUT_MS 200
#define LED_TIME 20

bool body[BODY_BITS];

void process_leader();
void process_body();
void process_end();
void process_validation();
void process_success();
void init_rf();
void send(uint8_t dataByte);
bool read_period();

void main(void)
{
	watchdog_setup();
	watchdog_set_wdsv_count(watchdog_calc_timeout_from_ms(WATCHDOG_TIMEOUT_MS));

	gpio_pins_val_clear(P0, 0xFF);
	gpio_pins_val_clear(P1, 0xFF);

	gpio_pin_configure(RED_PIN, 
		GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | 
		GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET | 
		GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

	gpio_pin_configure(GREEN_PIN, 
		GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | 
		GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET | 
		GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

	gpio_pin_configure(BLUE_PIN, 
		GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | 
		GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET | 
		GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

	gpio_pin_configure(IN_PIN,
		GPIO_PIN_CONFIG_OPTION_DIR_INPUT |
		GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);

	pwr_clk_mgmt_op_mode_configure(
		PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_RETENTION_LATCH_OPEN |
		PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_SOME_WAKEUP_PINS_ACTIVE_HIGH);

	pwr_clk_mgmt_enter_pwr_mode_active();

	process_leader();

	pwr_clk_mgmt_wakeup_pins_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_INPUT_P0_6_ENABLE);

	pwr_clk_mgmt_op_mode_configure(
		PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_RETENTION_LATCH_LOCKED |
		PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_SOME_WAKEUP_PINS_ACTIVE_HIGH);

	while(1) {
		pwr_clk_mgmt_enter_pwr_mode_deep_sleep();	
	}
}

void process_leader()
{
	bool period = true;
	uint16_t lows = 0;
	uint16_t highs = 0;

	while (period && highs <= MAX_LEADER_HIGHS)
	{
		period = read_period();
		highs += period;
	}

	if (highs > MAX_LEADER_HIGHS || highs < MIN_LEADER_HIGHS) {
		return;
	}

	while (!period && lows <= MAX_LEADER_LOWS)
	{
		period = read_period();
		lows += !period;
	}

	if (lows > MAX_LEADER_LOWS || lows < MIN_LEADER_LOWS) {
		return;
	}

	process_body();
}

void process_body()
{
	uint8_t bitNum;
	uint16_t highs;
	uint16_t lows;
	for (bitNum = 0; bitNum < BODY_BITS; bitNum++)
	{
		bool period = true;
		highs = 0;
		while (period && highs <= MAX_BIT_HIGHS) {
			period = read_period();
			highs += period;
		}

		if (highs > MAX_BIT_HIGHS || highs < MIN_BIT_HIGHS)
		{
			return;
		}

		lows = 0;
		while (!period && lows <= MAX_DATA1_BIT_LOWS) {
			period = read_period();
			lows += !period;
		}

		if (lows > MAX_DATA1_BIT_LOWS ||
				(lows < MIN_DATA1_BIT_LOWS && lows > MAX_DATA0_BIT_LOWS) ||
				lows < MIN_DATA0_BIT_LOWS)
		{
			return;
		}

		body[bitNum] = lows >= MIN_DATA1_BIT_LOWS;
	}
	process_end();
}

void process_end()
{
	bool period = true;
	uint16_t highs = 0;
	while (period && highs <= MAX_BIT_HIGHS) {
		period = read_period();
		highs += period;
	}
	if (highs > MAX_BIT_HIGHS || highs < MIN_BIT_HIGHS)
	{
		return;
	}

	process_validation();
}

void process_validation()
{
	uint8_t bitNum;
	for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
	{
		if (body[bitNum] != body[BODY_CUSTOM_BITS + bitNum]) {
			return;
		}
	}
	for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
	{
		if (body[BODY_CUSTOM_BITS * 2 + bitNum] ==
				body[BODY_CUSTOM_BITS * 2 + BODY_DATA_BITS + bitNum]) {
			return;
		}
	}

	process_success();
}

void process_success()
{
	uint8_t customByte = 0;
	uint8_t dataByte = 0;
	uint8_t bitNum;

	for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
	{
		customByte += body[bitNum] << bitNum;
	}
	for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
	{
		dataByte += body[BODY_CUSTOM_BITS * 2 + bitNum] << bitNum;
	}

	if (customByte != 7) {
		return;
	}

	init_rf();
	send(dataByte);
}

void init_rf()
{
	uint8_t pipes[2][5] = {  
	   {0xB8, 0x25, 0xB9, 0xE1, 0xBD},
	   {0xD9, 0x02, 0x86, 0xD0, 0xEE}
	};

	rf_spi_configure_enable();

	rf_configure(
		RF_CONFIG_EN_CRC | RF_CONFIG_CRCO | RF_CONFIG_PWR_UP,
		false,
		RF_EN_AA_ENAA_P0 | RF_EN_AA_ENAA_P1,
		RF_EN_RXADDR_ERX_P0 | RF_EN_RXADDR_ERX_P1,
		RF_SETUP_AW_5BYTES,
		RF_SETUP_RETR_ARD_500 | RF_SETUP_RETR_ARC_15,
		0x60,
		RF_RF_SETUP_RF_DR_250_KBPS | RF_RF_SETUP_RF_PWR_0_DBM,
		&pipes[1][0],
		&pipes[0][0],
		0xC3, 
		0xC4, 
		0xC5, 
		0xC6,
		&pipes[1][0],
		0x03,
		0x03,
		0x00,
		0x00,
		0x00,
		0x00,
		0x00,
		0x00);
}

void send(uint8_t dataByte)
{
	uint8_t payload[2] = { dataByte, rng_get_one_byte_and_turn_off() };

	rf_write_tx_payload(&payload[0], 2, true);
	while(!rf_irq_tx_ds_active() && !rf_irq_max_rt_active());
	if (rf_irq_tx_ds_active())
	{
		gpio_pin_val_clear(GREEN_PIN);
		delay_ms(LED_TIME);
		gpio_pin_val_set(GREEN_PIN);
	} else {
		gpio_pin_val_clear(RED_PIN);
		delay_ms(LED_TIME);
		gpio_pin_val_set(RED_PIN);
	}
	rf_flush_rx();
	rf_flush_tx();
	rf_irq_clear_all();
}

bool read_period()
{
	bool sample = 0;
	sample = !gpio_pin_val_read(IN_PIN);
	delay_us(40);
	return sample;
}