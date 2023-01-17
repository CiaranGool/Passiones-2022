
instance_create_depth(x,y,depth,ResHide);
if (chance(3))
{
	instance_create_depth(x-32,y,depth,ResHide);
	if (chance(2))
	{
		instance_create_depth(x+32,y,depth,ResHide);
	}
}
instance_create_depth(x+16,y,depth,ResFood);