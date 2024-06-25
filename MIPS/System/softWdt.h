#ifndef SOFTWDT_H
#define	SOFTWDT_H

#include "Common/LibDef.h"
#include "Project_Cfg.h"
#include "PIC32MM_Gpio.h"
#include "TaskManager.h"

extern volatile uint32_t softWdtCount;
extern volatile uint32_t softWdtCountMax;

public void SYS_SoftReset(void);
public void softWDT_Tasks(void *);
public void softWDT_Enable(void);
public void softWDT_Disable(void);
public void softWDT_SetLedIndicator(gpio_pin_t pin);
public void softWDT_SetCbBeforeReset(simple_fnc_t fnc);

public void softWDT_Isr(void); // Call this function in timer interrupt
    
#define NO_WDT  0xFFFFFFFF
    
#define softWDT_Init(tout, led, cb) do{softWdtCountMax=tout; softWdtCount=0; \
                                       softWDT_SetLedIndicator(led); \
                                       softWDT_SetCbBeforeReset(cb); \
                                       softWDT_Enable(); \
                                       CORETIMER_SetInterruptHandler(softWDT_Isr);\
                                       }while(1)
   
#define ClrWdt()                    TaskManager()
    
#endif