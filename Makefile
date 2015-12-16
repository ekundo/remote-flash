CC         := sdcc --std-c99 --verbose
PACKIHX    := packihx
HEX2IMAGE  := hex2image 
CFLAGS     := --opt-code-size --model-large
LFLAGS     := --code-loc 0x0000 --code-size 0x4000 --xram-loc 0x0000 --xram-size 0x400
FLASH_SIZE := 16384
MAIN       := main
BIN        := main.img

SDK_DIR            := $(shell cd /mnt/workspace/nRF24LE1_SDK-master && pwd)
INCLUDE            += -I ./
INCLUDE            += -I $(SDK_DIR)/include
INCLUDE            += -I $(SDK_DIR)/_target_sdcc_nrf24le1_32/include
REL_EXTERNAL_DIR   := $(SDK_DIR)/_target_sdcc_nrf24le1_32/obj
REL_EXTERNAL_FILES += $(REL_EXTERNAL_DIR)/delay/*.rel
REL_EXTERNAL_FILES += $(REL_EXTERNAL_DIR)/gpio/*.rel
REL_EXTERNAL_FILES += $(REL_EXTERNAL_DIR)/rf/*.rel
REL_EXTERNAL_FILES += $(REL_EXTERNAL_DIR)/pwr_clk_mgmt/*.rel
REL_EXTERNAL_FILES += $(REL_EXTERNAL_DIR)/rng/*.rel
# REL_EXTERNAL_FILES += $(REL_EXTERNAL_DIR)/watchdog/*.rel


REL_SRC := $(MAIN).c
REL_OBJ := $(patsubst %.c,%.rel,$(REL_SRC))

all: rel build

%.rel: %.c
	$(CC) -c $(INCLUDE) $(CFLAGS) $(LFLAGS) $^

rel: $(REL_OBJ)

build:
	$(CC) $(CFLAGS) $(LDFLAGS) $(REL_OBJ) $(REL_EXTERNAL_FILES)
	$(PACKIHX) $(MAIN).ihx > $(MAIN).hex
	$(HEX2IMAGE) -S $(FLASH_SIZE) < $(MAIN).hex > $(BIN)
	tail -n5 $(MAIN).mem

clean:
	$(RM) *.asm *.cdb *.hex *.ihx *.lk *.lst *.map *.mem *.omf *.rel *.rst *.sym *.img *.bin

test:
	@echo $(REL_EXTERNAL_FILES)
