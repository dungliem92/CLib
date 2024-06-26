#ifndef SHT40_H
#define	SHT40_H

#include "../Common/LibDef.h"
#include "Project_Cfg.h"

bool SHT40_Init(void);
uint16_t SHT40_GetPressure(void);

#endif
