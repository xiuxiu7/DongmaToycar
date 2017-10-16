
#include "task.h"

#define ADC_OFFSET	2048
#define ADC_LEN	1024



static bool Pedal_pre = 0;
inline bool IsPedalToggle(void)
{
	if(Pedal_pre != Pedal_GetVal())
	{
		Pedal_pre = Pedal_GetVal();
		return true;
	}else
	{
		return false;
	}
}

void run(void)
{
	float steel;
	int adc_result
	while(1)
	{
		Time_Delay(10);
		if(IsPedalToggle())
		{
			if(pedal == true)
			{
				MY_DEBUGF(((uint8_t*)&"DE"));
			}else
			{
				MY_DEBUGF(((uint8_t*)&"UE"));
			}
			continue;
		}
		adc_result = ADC_get();
		//MY_DEBUGF(((uint8_t*)&"adc result is %d\r\n"))
		
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

		steel = (adc_result - ADC_OFFSET)
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