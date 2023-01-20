/// @description Movement and interaction
var vil = instance_nearest(x,y,Obj_Villager);
//Chance to attack a villager
if (vil)
{
	if (point_distance(x,y,vil.x,vil.y) < 192 && chance(6))
	{
		attack = true;
	}
	else
		{
			attack = false;
		}
}
//Speed when not attacking
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