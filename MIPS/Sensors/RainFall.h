#ifndef RAINFALL_H
#define	RAINFALL_H

#include "../Common/LibDef.h"
#include "Project_Cfg.h"

bool RainFall_Init(void);
uint16_t RainFall_GetRainGauge(void);

RainFall_TimerStart();
RainFall_TimerStop();
RainFall_TimerGet();

#endif
