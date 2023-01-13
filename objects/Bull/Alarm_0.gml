alarm[0] = 60;

if (!attack)
{
	if (house)
	{
		targetloc_x = house.y;
		targetloc_y = house.y;
	}
	else
	{
		targetloc_x = x+choose(random(128),-random(128));
		targetloc_y = y+choose(random(128),-random(128));
	}
}
else
	{
			var afraidof = instance_nearest(x,y,Obj_Villager);
			targetloc_x = afraidof.x + xoffset;
			targetloc_y = afraidof.y + yoffset;
	}
