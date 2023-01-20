/// @description Check every 60 frames
alarm[0] = 60;
//Time to kill the deer
if (cutting>0)
{
	hp-=cutting;
shaking = false;
alarm[0]=2;
}
//Movement of deer
if (!fleeing)
{
	targetloc_x = x+choose(random(128),-random(128));
	targetloc_y = y+choose(random(128),-random(128));
}
else
	{
			afraidof = instance_nearest(x,y,Obj_Villager);
			targetloc_x = afraidof.x + xoffset;
			targetloc_y = afraidof.y + yoffset;
	}