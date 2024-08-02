#include "RainFall.h"

#ifdef USE_RAINFALL_DEBUG
#include "Common/Debug.h"
#else
#define __dbsi(...)
#define __dbs(...)
#define __dbh2(...)
#endif

static uint32_t Time=0;
static uint32_t Tk0=0;
static bool init=0;
static const float BUCKET_VOLUME_LITERS=0.52615;

void RainFall_Count(void)
{
    uint32_t Tk1=RainFall_TimerGet();

    if(init==1)
    {
        Tk0=Tk1;
        init=2;
    }

    ///Cnt++;
    Time=(Tk1-Tk0);

    if(Time>0)
    {
        Tk0=Tk1;
        RainFall_TimerStart();
        LED_APP_Toggle();
    }
}

bool RainFall_Init(void)
{
    if(init==0)
    {
        Time=0;
        init=1;
    }

    return true;
}

void RainFall_Deinit(void)
{
    init=0;
    RainFall_TimerStop();
}

void RainFall_Reset(void)
{
//    RainFall_Deinit();
//    RainFall_Init();
}

uint16_t RainFall_GetRainGauge(void)
{
    float tmp=0;

    if(Time>0)
    {
        __dbsu("\nRainFall: t=", Time);
        tmp=(1 /* Xung/gau */*BUCKET_VOLUME_LITERS)*36000.0f/(float) Time;
    }

    return (uint16_t) (tmp);
}




