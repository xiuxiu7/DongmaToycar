
#include "task.h"

bool pedal = false;

static bool Pedal_pre = 1;
bool IsPedalToggle(bool data)
{
	if(Pedal_pre != Pedal)
	{
		Pedal_pre = Pedal;
		return true;
	}else
	{
		return false;
	}
}

void run(void)
{
	float steel;
	while(1)
	{
		if(IsPedalToggle(pedal))
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
		steel = ADC_get();
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