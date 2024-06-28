#ifndef SHT4X_H
#define	SHT4X_H

#include "../Common/LibDef.h"
#include "Project_Cfg.h"

#define STATUS_OK                           0
#define STATUS_ERR_BAD_DATA                 (-1)
#define STATUS_CRC_FAIL                     (-2)
#define STATUS_UNKNOWN_DEVICE               (-3)
#define SHT4X_MEASUREMENT_DURATION_USEC     10000 /* 10ms "high repeatability" */
#define SHT4X_MEASUREMENT_DURATION_LPM_USEC 2500 /* 2.5ms "low repeatability" */

/**
 * Detects if a sensor is connected by reading out the ID register.
 * If the sensor does not answer or if the answer is not the expected value,
 * the test fails.
 *
 * @return 0 if a sensor was detected
 */
int16_t SHT4x_probe(void);

/**
 * Starts a measurement and then reads out the results. This function blocks
 * while the measurement is in progress. The duration of the measurement depends
 * on the sensor in use, please consult the datasheet.
 * Temperature is returned in [degree Celsius], multiplied by 1000,
 * and relative humidity in [percent relative humidity], multiplied by 1000.
 *
 * @param temperature   the address for the result of the temperature
 * measurement
 * @param humidity      the address for the result of the relative humidity
 * measurement
 * @return              0 if the command was successful, else an error code.
 */
int16_t SHT4x_measure_blocking_read(int32_t* temperature, int32_t* humidity);

/**
 * Starts a measurement in high precision mode. Use SHT4x_read() to read out the
 * values, once the measurement is done. The duration of the measurement depends
 * on the sensor in use, please consult the datasheet.
 *
 * @return     0 if the command was successful, else an error code.
 */
int16_t SHT4x_measure(void);

/**
 * Reads out the results of a measurement that was previously started by
 * SHT4x_measure(). If the measurement is still in progress, this function
 * returns an error.
 * Temperature is returned in [degree Celsius], multiplied by 1000,
 * and relative humidity in [percent relative humidity], multiplied by 1000.
 *
 * @param temperature   the address for the result of the temperature
 * measurement
 * @param humidity      the address for the result of the relative humidity
 * measurement
 * @return              0 if the command was successful, else an error code.
 */
int16_t SHT4x_read(int32_t* temperature, int32_t* humidity);

/**
 * Enable or disable the SHT's low power mode
 *
 * @param enable_low_power_mode 1 to enable low power mode, 0 to disable
 */
void SHT4x_enable_low_power_mode(uint8_t enable_low_power_mode);

/**
 * Read out the serial number
 *
 * @param serial    the address for the result of the serial number
 * @return          0 if the command was successful, else an error code.
 */
int16_t SHT4x_read_serial(uint32_t* serial);

bool SHT40_Init(void);

/* *************************************************** Defined in SHT4x_Cfg.c */
bool SHT4x_I2C_WriteNByte(uint8_t slvAddr, const uint8_t *pD, uint8_t len);
bool SHT4x_I2C_ReadNByte(uint8_t slvAddr, uint8_t *pD, uint8_t len);
void SHT4x_sleep_us(uint32_t t);

#endif
