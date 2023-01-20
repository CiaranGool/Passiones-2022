/// @description AI
//Check if not on task
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
	//Chance to flee from bull	
	var b = instance_nearest(x,y,Bull);
	if (b && point_distance(x,y,b.x,b.y) < 192)
	{
		var walking = mp_potential_step(Bull.x+choose(64,-64),y+choose(64,-64),3,false);
	if (!walking)
		{
				image_speed = 1;
		}
		else
			{
				image_speed = 0;
				image_index = 0;
			}
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
		if (!instance_exists(interest)) //When object is removed, return to idle state and more hunger
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
			switch (interest.object_index) //Deletion of objects when interacted
			{
				case Tree_2:
				case Stone_0:
				case Flint_0:
				case BerryBush_0:
				case Deer_0:
				case Monkey_0:
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
								case Deer_0:
								case Monkey_0:
								task = TASK_FOODGATHERING;
								break;
								
							}
							interest.cutting++;
							Selected = false;
						}
				break;
				case Obj_Villager: //Return to idle state when interacted
				case Bush:
				case Tiger:
				case Bull:
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

if (task == TASK_NONE) //Random movement when idle
{
	var walking = mp_potential_step(targetloc_x,targetloc_y,2,false);
	if (!walking)
		{
				image_speed = 1;
		}
		else
			{
				image_speed = 0;
				image_index = 0;
			}
}

// Die from hunger

if(hunger>200){
			instance_destroy()
			show_message_async(Name + choose(" has died from hunger"," has reached heaven by fasting", " has collapsed from hunger"));
}

if (global.food_count>0 && hunger > 180)
{
	global.food_count--;
	hunger = 0;
}