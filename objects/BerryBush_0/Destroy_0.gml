/// @description Gathering resource
//Chance for food bundles to drop
instance_create_depth(x,y,depth,ResFood);
if (chance(3))
{
	instance_create_depth(x-32,y,depth,ResFood);
	if (chance(2))
	{
		instance_create_depth(x+32,y,depth,ResFood);
	}
}