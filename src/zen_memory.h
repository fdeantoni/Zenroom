/* This file is part of Zenroom (https://zenroom.dyne.org)
 *
 * Copyright (C) 2017-2019 Dyne.org foundation
 * designed, written and maintained by Denis Roio <jaromil@dyne.org>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 */

#ifndef __ZEN_MEMORY_H__
#define __ZEN_MEMORY_H__

// header to inject our own memory allocation functions

char *zen_memory_alloc(size_t size);
void *zen_memory_realloc(void *ptr, size_t size);
void  zen_memory_free(void *ptr);
void *system_alloc(size_t size);
void *system_realloc(void *ptr, size_t size);
void  system_free(void *ptr);

// supported memory managers: lwmem, jemalloc, system
typedef enum { LW, JE, SYS } mmtype;

#endif
