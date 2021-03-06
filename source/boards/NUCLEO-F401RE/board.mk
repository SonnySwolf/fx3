#
# Board: NUCLEO-F401RE (with 401)
# http://www.st.com/web/catalog/tools/FM116/SC959/SS1532/LN1847/PF260000
#

# MCU model: STM32F401RET6
BOARD_NUCLEO_F401RE_MCU=STM32F401xE

BOARD_NUCLEO_F401RE_DIR:=source/boards/NUCLEO-F401RE

BOARD_NUCLEO_F401RE_INCLUDES:=\
	-Isource/arch/inc \
	-Isource/boards/inc \
	-I$(BOARD_NUCLEO_F401RE_DIR)/inc \
	-I$(CHIP_STM32FXX_DIR)/inc \
	-I$(STM32F4HAL)/CMSIS/Device/ST/STM32F4xx/Include \
	-I$(CMSIS)/Include \
	-I$(STM32F4CUBE)/Drivers/STM32F4xx_HAL_Driver/Inc

BOARD_NUCLEO_F401RE_CFLAGS:=$(CHIP_STM32FXX_CFLAGS) -D$(BOARD_NUCLEO_F401RE_MCU) -DUSE_HAL_DRIVER
BOARD_NUCLEO_F401RE_AFLAGS:=$(CHIP_STM32FXX_AFLAGS) -D__HEAP_SIZE=1024
BOARD_NUCLEO_F401RE_LFLAGS:=$(CHIP_STM32FXX_LFLAGS) -T $(BOARD_NUCLEO_F401RE_DIR)/linker/gcc/$(BOARD_NUCLEO_F401RE_MCU).ld

BOARD_NUCLEO_F401RE_C_VPATH:=\
	$(BOARD_NUCLEO_F401RE_DIR)/src \
	$(CHIP_STM32FXX_DIR)/src \
	$(STM32F4CUBE)/Drivers/STM32F4xx_HAL_Driver/Src

BOARD_NUCLEO_F401RE_S_VPATH:=\
	source/arch/cortex-m4/gcc \
	$(BOARD_NUCLEO_F401RE_DIR)/src/gcc

BOARD_NUCLEO_F401RE_OBJECTS:=\
	$(CHIP_STM32FXX_OBJECTS) \
	stm32f4_driver_usart.o \
	board_nucleo_f401re.o \
	bitops.o \
	system_stm32f4xx.o \
	stm32f4xx_hal.o \
	stm32f4xx_hal_cortex.o \
	stm32f4xx_hal_pwr.o \
	stm32f4xx_hal_rcc.o \
	stm32f4xx_hal_gpio.o \
	stm32f4xx_hal_spi.o \
	stm32f4xx_hal_uart.o \
	stm32f4xx_hal_dma.o \
	startup_stm32f401xe.o \

#BOARD_NUCLEO_F401RE_OPENOCD_BOARD_SCRIPT:=board/stm32f4discovery.cfg
