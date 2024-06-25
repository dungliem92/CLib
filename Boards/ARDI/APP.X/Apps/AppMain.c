#include "AppMain.h"

typedef enum
{
    APP_IDLE=0,
    APP_READ_SENSORS,
    APP_READ_GNSS,
    APP_SYNC,
    APP_ERROR,
    APP_HALT,
    APP_REBOOT,
} app_task_t;

static struct
{
    tick_timer_t Tick;
    app_task_t Next;
} AppCxt;

uint8_t I2C_Scan(void) // <editor-fold defaultstate="collapsed" desc="Scan I2C slaver">
{
    uint8_t found, slv;

    for(slv=1, found=0; slv<128; slv++)
    {
        ClrWdt();
        TaskManager();

        if(I2C1_Master_Write(slv, NULL, 0))
        {
            found++;

            __dbs("\n       Found 0x");
            __dbh2(slv);
        }
    }

    return found;
} // </editor-fold>

private void APP_DebugCmd_Process(uint8_t *pCmd) // <editor-fold defaultstate="collapsed" desc="Debug CMD process">
{
    str_uppercase(pCmd);

    if(strstr((const char *) pCmd, "AT#CELLON")!=NULL)
    {

    }
} // </editor-fold>

public void APP_Main_Initialize(void) // <editor-fold defaultstate="collapsed" desc="Application Initialize">
{
    __dbs("\n---------- APP INIT ----------\n");
    AppCxt.Next=APP_IDLE;
    Tick_Timer_Reset(AppCxt.Tick);
    Indicator_Toggle(0, 50, 2950);
    Power_Monitor_Init();
    VCP_Debug_SetRxCallback(APP_DebugCmd_Process);

    if(SST_Init()==0)
    {
        AppCxt.Next=APP_ERROR;
        __dbs("\nSST25VF016B error");
    }

    __dbs("\n------------------------------\n");
} // </editor-fold>

public void APP_Main_Tasks(void) // <editor-fold defaultstate="collapsed" desc="Application Main Task">
{
    if(Tick_Timer_Is_Over_Ms(AppCxt.Tick, 500))
    {
        __tsdbs("VOTAGE:");
    }

    switch(MOD_Button_GetState(BUTTON_GetValue()))
    {
        case SINGLE_PRESS:
            __tsdbs("Force sync\n");
            AppCxt.Next=APP_HALT;
            break;

        case HOLD_PRESS:
            __tsdbs("System halt\n");
            AppCxt.Next=APP_HALT;
            break;

        default: // Do nothing
            break;
    }
} // </editor-fold>