///@func				spawn_things(myinstance,c)
///@desc				spawn thing randomly
///@arg			{Asset.Object}	myinstance instance to spawn	
///@arg			{Real}	c chance to spawn
function spawn_things(myinstance,c){
	if (chance(c))
	{
		instance_create_depth(x,y,depth,myinstance);
	}
}