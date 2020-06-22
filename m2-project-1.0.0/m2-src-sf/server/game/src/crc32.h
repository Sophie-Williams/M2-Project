#pragma once

typedef uint32_t crc_t;

crc_t	GetCRC32(const char * buffer, uint32_t count);
crc_t	GetCaseCRC32(const char * buffer, uint32_t count);
crc_t	GetFastHash(const char * key, uint32_t len);
