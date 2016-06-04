EMBEDDED:=$(subst \,/,$(EMBEDDED_LIB))

STM32F4CUBE:=$(EMBEDDED)/STM32Cube_FW_F4_V1.12.0
STM32F4HAL:=$(STM32F4CUBE)/Drivers
STM32F3CUBE:=$(EMBEDDED)/STM32Cube_FW_F3_V1.5.0
STM32F3HAL:=$(STM32F3CUBE)/Drivers
CMSIS:=$(EMBEDDED)/CMSIS-SP-00300-r4p5-00rel0/CMSIS
SEGGER:=$(EMBEDDED)/SEGGER/SystemView_V236a/Src
KINETIS_K64:=$(EMBEDDED)/SDK_2.0_TWR-K64F120M
