#ifndef WINDSPEED_H
#define	WINDSPEED_H

#include "../Common/LibDef.h"
#include "Project_Cfg.h"

void WindSpeed_Count(void);

bool WindSpeed_Init(void);

void WindSpeed_Deinit(void);

uint16_t WindSpeed_GetSpeed(void);

void WindSpeed_TimerStart(void);

void WindSpeed_TimerStop(void);

uint32_t WindSpeed_TimerGet(void);

#endif
