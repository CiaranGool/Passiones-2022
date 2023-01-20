/// @description Gathering resources
//Random amount of bundles
instance_create_depth(x,y,depth,ResWood);
if (chance(3))
{
	instance_create_depth(x-32,y,depth,ResWood);
	if (chance(2))
	{
		instance_create_depth(x+32,y,depth,ResWood);
	}
}