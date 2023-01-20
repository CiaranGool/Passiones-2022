/// @description Growing of bush
instance_create_depth(x,y,depth,BerryBush_0);
if (chance(2))
{
	instance_create_depth(x+choose(64,-64),y,depth,BerryBush_0);
}

instance_destroy();