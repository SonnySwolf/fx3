/**
 * @file stm32_chp.h
 * @brief Chip support for STM32F3 and STM32F4 families
 * @author Florin Iucha <florin@signbit.net>
 * @copyright Apache License, Version 2.0
 */

/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * This file is part of FX3 RTOS for ARM Cortex-M4
 */

#ifndef __STM32_CHP_H__
#define __STM32_CHP_H__

#include <stdint.h>

void chp_initialize(void);

void chp_initializeSystemTimer(uint16_t prescaler);

#endif // __STM32_CHP_H__

