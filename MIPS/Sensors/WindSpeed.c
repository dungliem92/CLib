#include "WindSpeed.h"

static uint32_t Cnt = 0;
static tick_timer_t Time = 0;
static tick_timer_t Tk0 = 0;
static const float SPEED = 0.0173833; 


void WindSpeed_Count(void)
{
    tick_timer_t Tk1 = WindSpeed_TimerGet();    
    Cnt++;
    Time += (Tk1 - Tk0);
    Tk0 = Tk1;
}

bool WindSpeed_Init(void)
{
    Cnt = 0;
    Tk0 = WindSpeed_TimerGet();
    WindSpeed_TimerStart();
    return true;
}

void WindSpeed_Deinit(void)
{
    WindSpeed_TimerStop();
}

uint16_t WindSpeed_GetSpeed(void)
{
    return (uint16_t)(Cnt * SPEED);
}

void WindSpeed_TimerStart(void)
{
   
}

void WindSpeed_TimerStop(void)
{
 
}
