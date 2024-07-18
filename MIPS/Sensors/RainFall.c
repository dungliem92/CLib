#include "RainFall.h"

static uint32_t Cnt=0;
static uint32_t RainGauge;

void RainFall_Count(void)
{
    tick_t Tk1=Tick_Get();
    
    Cnt++;
    Time+=(Tk1-Tk0);
}

bool RainFall_Init(void)
{
    Cnt=0;
    RainFall_TimerStart();
    return 1;
}

void RainFall_Deinit(void)
{
    RainFall_TimerStop();
}

uint16_t RainFall_GetRainGauge(void)
{
    return 0;
}
