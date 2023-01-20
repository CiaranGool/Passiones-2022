/// @description Gathering resources
//Random bundles
instance_create_depth(x,y,depth,ResFlint);
if (chance(3))
{
	instance_create_depth(x-32,y,depth,ResFlint);
	if (chance(2))
	{
		instance_create_depth(x+32,y,depth,ResFlint);
	}
}