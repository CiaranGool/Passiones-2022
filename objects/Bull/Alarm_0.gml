/// @description Check every 60 frames

alarm[0] = 60;
//Chance for the bull to move to a building
if (!attack)
{
	if (instance_exists(house) && chance(8))
	{
		targetloc_x = house.x;
		targetloc_y = house.y;
	}
	else
	{
		targetloc_x = x+choose(random(128),-random(128));
		targetloc_y = y+choose(random(128),-random(128));
	}
}
//Chance for the bull to flee from villagers
else
	{
			var afraidof = instance_nearest(x,y,Obj_Villager);
			targetloc_x = afraidof.x + xoffset;
			targetloc_y = afraidof.y + yoffset;
	}
