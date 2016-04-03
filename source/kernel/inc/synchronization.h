/**
 * @file synchronization.h
 * @brief Synchronization primitives for FX3
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

#ifndef __SYNCHRONIZATION_H__
#define __SYNCHRONIZATION_H__

#include <stdint.h>

struct mutex;

/** Acquire mutex; block this thread until succesful
 *
 * @param mtx is the mutex
 */
void mutex_acquire(struct mutex* mtx);

/** Releases mutex
 *
 * @param mtx is the mutex
 */
void mutex_release(struct mutex* mtx);

struct semaphore;

/** Acquire this semaphore; block this thread until succesful
 *
 * @param sem is the semaphore
 * @return the semaphore count
 */
uint32_t semaphore_pend(struct semaphore* sem);

/** Releases this semaphore
 *
 * @param sem is the semaphore
 * @return the semaphore count
 */
uint32_t semaphore_post(struct semaphore* sem);

#endif // __SYNCHRONIZATION_H__
