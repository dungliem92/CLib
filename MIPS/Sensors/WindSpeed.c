#include "WindSpeed.h"

static uint32_t Cnt=0;
static uint16_t Speed=0;
static bool init=0;
static const float SPEED_CONST=0.104; // m/s

void WindSpeed_Count(void)
{
    Cnt++;
}

void WindSpeed_Process(void)
{
    float tmp=((float) Cnt*SPEED_CONST);

    Cnt=0;
    Speed=(uint16_t) tmp;
}

bool WindSpeed_Init(void)
{
    if(init==0)
    {
        init=0;
        Cnt=0;
        Speed=0;
        WindSpeed_TimerStart();
    }

    return true;
}

void WindSpeed_Deinit(void)
{
    init=0;
    WindSpeed_TimerStop();
}

uint16_t WindSpeed_GetSpeed(void)
{
    return Speed;
}
