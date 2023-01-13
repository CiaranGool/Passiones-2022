//©Roderick F 2023
var vil = instance_nearest(x,y,Obj_Villager);
#region stealing
if (point_distance(x,y,vil.x,vil.y) < 64 && chance(8) && goods < 1) //Steal something if close to villager and when no goods have been stolen
{
switch (mystealtype) //Check wether the goods can be stolen.
	{
		case stealtype.food:
		if (global.food_count > whatiwant)
		{
			stealing = true;
		}
		else
			{
				stealing = false;
			}
		break;
		case stealtype.stone:
		if (global.stone_count > whatiwant)
		{
			stealing = true;
		}
		else
			{
				stealing = false;
			}
		break;
		case stealtype.wood:
		if (global.wood_count > whatiwant)
		{
			stealing = true;
		}
		else
			{
				stealing = false;
			}
		break;
		case stealtype.flint:
		if (global.flint_count > whatiwant)
		{
			stealing = true;
		}
		else
			{
				stealing = false;
			}
		break;
	}
}
#endregion
//walking
if (!stealing && !fleeing)
{
	var walking = mp_potential_step(targetloc_x+xoffset,targetloc_y+yoffset,1,false);
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
else
{
	walk(2);
}
//Fleeing
if (point_distance(x,y,vil.x,vil.y) < 64 && goods>0)
{
	stealing = false;
	fleeing = true;
}
else
	{
		fleeing = false;
	}
//get point depending on state.
if (fleeing)
{
	targetloc_x = vil.x + xoffset;
	targetloc_y = vil.y + yoffset;
}

if (stealing && point_distance(x,y,vil.x,vil.y) < 64 && !vil.busy)
{
	targetloc_x = vil.x;
	targetloc_y = vil.y;
}

//Resource related
Handle_depth();
n+=30;
if (n>360)
{
	n = 0;
}

if (shaking)
{
	x += .25*sin(degtorad(n));
}

if (hp < 1)
{
	instance_destroy();
}

if (cutting)
{
	speed = 0;
}