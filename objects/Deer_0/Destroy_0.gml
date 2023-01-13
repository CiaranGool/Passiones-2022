var p = instance_nearest(x,y,Obj_Villager);

if (point_distance(x,y,p.x,p.y) < 96)
{
	global.hide_count+=5;
}