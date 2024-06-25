#include "Power_Monitor.h"
#include "System/TickTimer.h"
#include "System/TaskManager.h"
#include "Common/UserFunctions.h"

static pwrmoni_buf_t PwrMoniBuff[8];

uint16_t Power_Monitor_Get(ADC1_CHANNEL Channel) // <editor-fold defaultstate="collapsed" desc="Get voltage">
{
    uint32_t tmp=PwrMoniBuff[Channel].Val;

    switch(Channel)
    {
        case UNO_VREF:
        case UNO_AN3:
        case VBAT_DIV:
        case UNO_AN1:
        case UNO_AN2:

        case CHANNEL_VBG:
        case CHANNEL_VDD_core:
        case CHANNEL_AVSS:
        case CHANNEL_AVDD:
            tmp*=825;
            tmp/=1024;
            break;

        default:
            tmp=0;
            break;
    }

    return (uint16_t) tmp;
} // </editor-fold>

private new_delay_task_t(Power_Monitor_Tasks) // <editor-fold defaultstate="collapsed" desc="Power monitor tasks">
{
    ADC1_CHANNEL ch;

    for(ch=UNO_VREF; ch<CHANNEL_END; ch++)
    {
        ADC1_ChannelSelect(ch);
        ADC1_Start();
        __delay_us(20);
        ADC1_Stop();

        while(!AD1CON1bits.DONE)
            ADC1_Tasks();

        PwrMoniBuff[ch].Val=iir(&PwrMoniBuff[ch].Iir, (uint16_t) ADC1BUF0, 2);
    }

    Task_Done();
} // </editor-fold>

void Power_Monitor_Init(void) // <editor-fold defaultstate="collapsed" desc="Power monitor init">
{
    TaskManager_Create_NewDelayTask(Power_Monitor_Tasks);
} // </editor-fold>