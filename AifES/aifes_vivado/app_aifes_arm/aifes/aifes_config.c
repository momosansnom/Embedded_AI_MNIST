#include "aifes_config.h"

#ifdef AIDEBUG_ENABLE_PRINTING

#include <stdio.h>
#include <string.h>
#include "main.h"
#include "xuartps.h"

extern XUartPs Uart_Ps;


static int uart_write(const char *s)
{
    size_t n = strlen(s);
    XUartPs_Send(&Uart_Ps,(uint8_t *)s,(uint32_t)n);
    return (int)n;
}

int aifes_print(const char *string)
{
    return uart_write(string);
}

int aifes_print_int(const char *format, int var)
{
    char buf[32];
    snprintf(buf, sizeof buf, format, var);
    return uart_write(buf);
}

int aifes_print_uint(const char *format, unsigned int var)
{
    char buf[32];
    snprintf(buf, sizeof buf, format, var);
    return uart_write(buf);
}

int aifes_print_long_int(const char *format, long int var)
{
    char buf[32];
    snprintf(buf, sizeof buf, format, var);
    return uart_write(buf);
}

int aifes_print_float(const char *format, float var)
{
    char buf[48];
    snprintf(buf, sizeof buf, format, var);
    return uart_write(buf);
}

/* Pointeurs utilisés par les macros AIPRINT* et par aiprint() */
int (*aiprint)(const char *string)                        = aifes_print;
int (*aiprint_int)(const char *format, int var)           = aifes_print_int;
int (*aiprint_uint)(const char *format, unsigned int var) = aifes_print_uint;
int (*aiprint_long_int)(const char *format, long int var) = aifes_print_long_int;
int (*aiprint_float)(const char *format, float var)       = aifes_print_float;

#endif /* AIDEBUG_ENABLE_PRINTING */
