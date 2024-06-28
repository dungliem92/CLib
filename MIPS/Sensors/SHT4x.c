#include "SHT4x.h"

/* all measurement commands return T (CRC) RH (CRC) */
#define SHT4X_CMD_MEASURE_HPM 0xFD
#define SHT4X_CMD_MEASURE_LPM 0xE0
#define SHT4X_CMD_READ_SERIAL 0x89
#define SHT4X_CMD_DURATION_USEC 1000
#define SHT4X_ADDRESS 0x44
#define SENSIRION_WORD_SIZE 2
#define SENSIRION_NUM_WORDS(x) (sizeof(x) / SENSIRION_WORD_SIZE)

static uint8_t SHT4x_cmd_measure=SHT4X_CMD_MEASURE_HPM;
static uint16_t SHT4x_cmd_measure_delay_us=SHT4X_MEASUREMENT_DURATION_USEC;

bool SHT4x_I2C_ReadNWord(uint8_t slvAddr, uint16_t *pD, uint8_t len)
{
    bool rslt;
    uint8_t w[2];

    rslt=0;

    while(len>0)
    {
        rslt|=SHT4x_I2C_ReadNByte(slvAddr, w, 2);
        *pD=w[0];
        *pD=*pD<<8;
        *pD|=w[1];
        len--;
    }

    return rslt; // 0-success, 1-fail
}

int16_t SHT4x_measure_blocking_read(int32_t* temperature, int32_t* humidity)
{
    int16_t ret=SHT4x_measure();

    if(ret!=0)
        return ret;

    SHT4x_sleep_us(SHT4x_cmd_measure_delay_us);

    return SHT4x_read(temperature, humidity);
}

int16_t SHT4x_measure(void)
{
    return SHT4x_I2C_WriteNByte(SHT4X_ADDRESS, &SHT4x_cmd_measure, 1);
}

int16_t SHT4x_read(int32_t* temperature, int32_t* humidity)
{
    uint16_t words[2];
    int16_t ret=SHT4x_I2C_ReadNWord(SHT4X_ADDRESS, words, SENSIRION_NUM_WORDS(words));
    /**
     * formulas for conversion of the sensor signals, optimized for fixed point
     * algebra:
     * Temperature = 175 * S_T / 65535 - 45
     * Relative Humidity = 125 * (S_RH / 65535) - 6
     */
    *temperature=((21875*(int32_t) words[0])>>13)-45000;
    *humidity=((15625*(int32_t) words[1])>>13)-6000;

    return ret;
}

int16_t SHT4x_probe(void)
{
    uint32_t serial;

    return SHT4x_read_serial(&serial);
}

void SHT4x_enable_low_power_mode(uint8_t enable_low_power_mode)
{
    if(enable_low_power_mode)
    {
        SHT4x_cmd_measure=SHT4X_CMD_MEASURE_LPM;
        SHT4x_cmd_measure_delay_us=SHT4X_MEASUREMENT_DURATION_LPM_USEC;
    }
    else
    {
        SHT4x_cmd_measure=SHT4X_CMD_MEASURE_HPM;
        SHT4x_cmd_measure_delay_us=SHT4X_MEASUREMENT_DURATION_USEC;
    }
}

int16_t SHT4x_read_serial(uint32_t* serial)
{
    static const uint8_t cmd=SHT4X_CMD_READ_SERIAL;

    int16_t ret;
    uint16_t serial_words[SENSIRION_NUM_WORDS(*serial)];

    ret=SHT4x_I2C_WriteNByte(SHT4X_ADDRESS, &cmd, 1);

    if(ret!=0)
        return ret;

    SHT4x_sleep_us(SHT4X_CMD_DURATION_USEC);
    ret=SHT4x_I2C_ReadNWord(SHT4X_ADDRESS, serial_words, SENSIRION_NUM_WORDS(serial_words));
    *serial=((uint32_t) serial_words[0]<<16)|serial_words[1];

    return ret;
}

bool SHT40_Init(void)
{
    if(SHT4x_I2C_WriteNByte(SHT4X_ADDRESS, NULL, 0)==0)
    {
        SHT4x_enable_low_power_mode(1); // low power mode
        
        return 1;
    }
    
    return 0;
}