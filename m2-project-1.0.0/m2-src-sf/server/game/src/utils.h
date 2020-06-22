#pragma once
#include <math.h>

#define IS_SET(flag, bit)		((flag) & (bit))
#define SET_BIT(var, bit)		((var) |= (bit))
#define REMOVE_BIT(var, bit)	((var) &= ~(bit))
#define TOGGLE_BIT(var, bit)	((var) = (var) ^ (bit))

inline float DISTANCE_SQRT(int32_t dx, int32_t dy)
{
    return ::sqrt((float)dx * dx + (float)dy * dy);
}

inline int32_t DISTANCE_APPROX(int32_t dx, int32_t dy)
{
	int32_t min, max;

	if (dx < 0)
		dx = -dx;

	if (dy < 0)
		dy = -dy;

	if (dx < dy)
	{
		min = dx;
		max = dy;
	}
	else
	{
		min = dy;
		max = dx;
	}

    return ((( max << 8 ) + ( max << 3 ) - ( max << 4 ) - ( max << 1 ) + ( min << 7 ) - ( min << 5 ) + ( min << 3 ) - ( min << 1 )) >> 8 );
}

#ifndef __WIN32__
inline uint16_t MAKEWORD(uint8_t a, uint8_t b)
{
	return static_cast<uint16_t>(a) | (static_cast<uint16_t>(b) << 8);
}
#endif

extern void set_global_time(int32_t t);
extern int32_t get_global_time();
#ifdef __GAYA__
extern int32_t init_gayaTime();
#endif

extern int32_t	dice(int32_t number, int32_t size);
extern uint32_t str_lower(const char * src, char * dest, uint32_t dest_size);

extern void	skip_spaces(char **string);

extern const char *	one_argument(const char *argument, char *first_arg, uint32_t first_size);
extern const char *	two_arguments(const char *argument, char *first_arg, uint32_t first_size, char *second_arg, uint32_t second_size);

extern const char* three_arguments(const char* argument, char* first_arg, uint32_t first_size, char* second_arg, uint32_t second_size, char* third_flag, uint32_t third_size);
extern const char* four_arguments(const char* argument, char* first_arg, uint32_t first_size, char* second_arg, uint32_t second_size, char* third_flag, uint32_t third_size, char* four_flag, uint32_t four_size);
extern const char* six_arguments(const char* argument, char* first_arg, uint32_t first_size, char* second_arg, uint32_t second_size, char* third_flag, uint32_t third_size, char* four_flag, uint32_t four_size, char* five_flag, uint32_t five_size, char* six_flag, uint32_t six_size);

extern const char *	first_cmd(const char *argument, char *first_arg, uint32_t first_arg_size, uint32_t *first_arg_len_result);

extern int32_t CalculateDuration(int32_t iSpd, int32_t iDur);

extern float gauss_random(float avg = 0, float sigma = 1);

extern int32_t parse_time_str(const char* str);

extern bool WildCaseCmp(const char *w, const char *s);
