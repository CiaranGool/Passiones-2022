/// @description Check every 20 frames
alarm[0] = 20;
//Movement
if (!attack)
{
				targetloc_x = x+choose(random(128),-random(128));
				targetloc_y = y+choose(random(128),-random(128));

}
else
	{
			var target = instance_nearest(x,y,Obj_Villager);
			targetloc_x = target.x + xoffset;
			targetloc_y = target.y + yoffset;
	}
