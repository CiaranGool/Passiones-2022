var vil = instance_nearest(x,y,Obj_Villager);
if (vil)
{
	if (point_distance(x,y,vil.x,vil.y) < 192 && chance(8))
	{
		fleeing = true;
	}
	else
		{
			fleeing = false;
		}
}
walk(4);

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
	friction = 5;
}