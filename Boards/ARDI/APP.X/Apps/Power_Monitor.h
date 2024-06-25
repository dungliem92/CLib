#ifndef POWER_MONITOR_H
#define	POWER_MONITOR_H

#include <stdint.h>
#include "Project_Cfg.h"

typedef struct {
    uint32_t Iir;
    uint16_t Val;
} pwrmoni_buf_t;

void Power_Monitor_Init(void);
uint16_t Power_Monitor_Get(ADC1_CHANNEL Channel);

#define GetV5v()    Power_Monitor_Get(CH_V5V_SEN)
#define GetVbat()   Power_Monitor_Get(CH_VBAT_SEN)
#define GetVNbAux() Power_Monitor_Get(CH_NB_VAUX_SEN)
#define GetVNb()    Power_Monitor_Get(CH_VNB_SEN)
#define GetVSolar() Power_Monitor_Get(CH_VSOLAR_SEN)
#define GetVCore()  Power_Monitor_Get(CH_VCORE)
#define GetVBGap()  Power_Monitor_Get(CH_BAND_GAP)

#endif
