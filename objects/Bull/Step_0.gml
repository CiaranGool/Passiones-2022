/// @description Movement of the element
//Chance for bull to attack a house
var vil = instance_nearest(x,y,Obj_Villager);

house = instance_nearest(x,y,Hut_0);
if (house)
{
	if (point_distance(house.x,house.y,x,y) < sprite_width)
	{
		with (house) {instance_destroy();}
	}
}
//Chance of attacking a villager
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
//Movement when the bull is idle	
if (!attack)
{
	walk(3);
}
else
	{
		walk(5);
	}

Handle_depth();
//Death of the bull
if (hp<1)
{
	instance_destroy();
}