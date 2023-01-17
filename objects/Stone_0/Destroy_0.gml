/// @description gathering resources
instance_create_depth(x,y,depth,ResStone);
if (chance(3))
{
	instance_create_depth(x-32,y,depth,ResStone);
	if (chance(2))
	{
		instance_create_depth(x+32,y,depth,ResStone);
	}
}