#include "RainFall.h"

static uint32_t Time=0;
static uint32_t Tk0=0;
static bool init=0;
static const float BUCKET_VOLUME_LITERS=0.63135;

void RainFall_Count(void)
{
    uint32_t Tk1=RainFall_TimerGet();

    ///Cnt++;
    Time=(Tk1-Tk0);
    Tk0=Tk1;
}

bool RainFall_Init(void)
{
    if(init==0)
    {
        init=1;
        Tk0=RainFall_TimerGet();
        RainFall_TimerStart();
    }

    return true;
}

void RainFall_Deinit(void)
{
    init=0;
    RainFall_TimerStop();
}

uint16_t RainFall_GetRainGauge(void)
{
    float tmp=(1 /* Xung/gau */*BUCKET_VOLUME_LITERS)*3600/Time;

    return (uint16_t) (tmp);
}




