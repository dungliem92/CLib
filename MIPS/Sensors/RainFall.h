#ifndef RAINFALL_H
#define	RAINFALL_H

#include "../Common/LibDef.h"
#include "Project_Cfg.h"

void RainFall_Count(void);
bool RainFall_Init(void);
void RainFall_Deinit(void);
uint16_t RainFall_GetRainGauge(void);

uint32_t RainFall_TimerGet(void);
void RainFall_TimerStart(void);
void RainFall_TimerStop(void);
#endif
