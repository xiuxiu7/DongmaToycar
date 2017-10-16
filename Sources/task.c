
#include "task.h"
#include "stdint.h"
#include <stddef.h>
#include "print.h"

#define ADC_OFFSET	2048
#define ADC_LEN	1024



static bool Pedal_pre = 1;
bool IsPedalToggle(void)
{
	if(Pedal_pre != Pedal_GetVal())
	{
		Pedal_pre = Pedal_GetVal();
		return TRUE;
	}else
	{
		return FALSE;
	}
}

uint32_t run_cnt = 0;
void run(void)
{
	float steel;
	word adc_result;
	while(1)
	{
		run_cnt++;
		_time_delay_ticks(10);
		if(IsPedalToggle())
		{
			if(Pedal_GetVal() == TRUE)
			{
				MY_DEBUGF(((uint8_t*)&"UE"));
			}else
			{
				MY_DEBUGF(((uint8_t*)&"DE"));
			}
			continue;
		}
		ADC_Measure(TRUE);
		ADC_GetValue16(&adc_result);
		//MY_DEBUGF(((uint8_t*)&"adc result is %d\r\n"))
		adc_result = adc_result >> 4;
		if(adc_result > ADC_OFFSET + ADC_LEN)
		{
			steel = 1;
		}else if(adc_result < ADC_OFFSET - ADC_LEN)
		{
			steel = -1;
		}else
		{
			steel = (float)(adc_result - ADC_OFFSET)/ADC_LEN;
		}

		steel = (adc_result - ADC_OFFSET);
		if(steel == 1 || steel == -1)
		{
			MY_DEBUGF(((uint8_t*)&"%d", steel));
		}else
		{
			float a = -0.12345;
			if(a>0)
			{
				MY_DEBUGF(((uint8_t*)&"0."));
			}
			else
			{
				a = -a;
				MY_DEBUGF(((uint8_t*)&"-0."));
			}
			MY_DEBUGF(((uint8_t*)&"%d", (uint8_t)(a*100)));
		}
	}
}
