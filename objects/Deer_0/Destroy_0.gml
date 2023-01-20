/// @description Deletion of element
//Chance of dropping amount of bundles hide

instance_create_depth(x,y,depth,ResHide);
instance_create_depth(x+16,y,depth,ResFood);
if (chance(8))
{
	instance_create_depth(x-32,y,depth,ResHide);
	if (chance(2))
	{
		instance_create_depth(x+32,y,depth,ResHide);
	}
}