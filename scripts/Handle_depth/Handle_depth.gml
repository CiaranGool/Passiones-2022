///@func		Handle_depth()
///@desc		Auto depth handling
function Handle_depth(){
	var n = collision_circle(x,y,32,Obj_Villager,true,true)
	if (n)
	{
		if (n.y>y)
		{
			depth = n.depth+1;
		}
		else
			{
				depth = n.depth-1;
			}
	}
	var a = collision_circle(x,y,32,Par_animals,true,true)
	if (a)
	{
		if (a.y>y)
		{
			depth = a.depth+1;
		}
		else
			{
				depth = a.depth-1;
			}
	}
}