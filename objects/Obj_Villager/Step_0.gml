/// @description AI

if (!busy)
{
	if (
	interest && task != TASK_SEARCHING
	&& task != TASK_FLINTGATHERING
	&& task != TASK_SKINNING
	&& task != TASK_STONEGATHERING
	&& task != TASK_WOODCUTTING
	&& task != TASK_FOODGATHERING
	)
		{
			task = TASK_SEARCHING;
			busy = true;
		}
	switch (task)
	{
		case TASK_WOODCUTTING:
			
		break;
		
		case TASK_STONEGATHERING:
		
		break;
		
		case TASK_SKINNING:
		
		break;
		
		case TASK_FLINTGATHERING:
		
		break;
		
		case TASK_SEARCHING:
		
		break;
		
		case TASK_FOODGATHERING:
		
		break;
	}
	
}
else
	{
		switch (task)
	{
		case TASK_WOODCUTTING:
		case TASK_STONEGATHERING:
		case TASK_SKINNING:
		case TASK_FLINTGATHERING:
		case TASK_FOODGATHERING:
		if (!instance_exists(interest))
			{
				task = TASK_NONE;
				interest = noone;
				busy = false;
				hunger+=5;
			}
		break;
		case TASK_SEARCHING:
		if (instance_exists(interest))
		{
			switch (interest.object_index)
			{
				case Tree_2:
				case Stone_0:
				case Flint_0:
				case BerryBush_0:
						mp_potential_step(interest.x,interest.y,2,false);

						if (point_distance(x,y,interest.x,interest.y) < 16)
						{
							switch (interest.object_index)
							{
								case Tree_2:
								task = TASK_WOODCUTTING;
								break;
								case Stone_0:
								task = TASK_STONEGATHERING;
								break;
								case Flint_0:
								task = TASK_FLINTGATHERING;
								break;
								case BerryBush_0:
								task = TASK_FOODGATHERING;
								break;
							}
							interest.cutting++;
							Selected = false;
						}
				break;
				case Obj_Villager:
				task = TASK_NONE;
				busy = false;
				break;
			}
			
		}
		else
			{
				task = TASK_NONE;
				busy = false;
			}
		break;
	}
}
if (task == TASK_SEARCHING)
{
	busy = true;
}

if (task == TASK_NONE)
{
	mp_potential_step(targetloc_x,targetloc_y,2,false);
}

// Die from hunger

if(hunger>200){
	if (global.food_count>0)
	{
		global.food_count--;
		hunger = 0;
	}
	else
		{
			instance_destroy()
			show_message_async(name + " Has died from GOD")
		}
}