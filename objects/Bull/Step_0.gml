var vil = instance_nearest(x,y,Obj_Villager);

house = instance_nearest(x,y,Hut_0);
if (house)
{
	if (point_distance(house.x,house.y,x,y) < sprite_width)
	{
		with (house) {instance_destroy();}
	}
}
if (vil)
{
	if (point_distance(x,y,vil.x,vil.y) < 192 && chance(16))
	{
		attack = true;
	}
	else
		{
			attack = false;
		}
}
	
if (!attack)
{
	walk(3);
}
else
	{
		walk(5);
	}

Handle_depth();

if (hp<1)
{
	instance_destroy();
}