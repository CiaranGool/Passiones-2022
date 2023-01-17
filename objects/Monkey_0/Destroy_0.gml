/// @description Insert description here
var p = instance_nearest(x,y,Obj_Villager);

if (point_distance(x,y,p.x,p.y) < 96)
{
	if (goods)
	{
		switch (stolentype)
		{
			case stealtype.stone:
			global.stone_count+=goods;
			break;
			case stealtype.flint:
			global.flint_count+=goods;
			break;
			case stealtype.food:
			global.food_count+=goods;
			break;
			case stealtype.wood:
			global.wood_count+=goods;
			break;
		}
	}
}

instance_create_depth(x,y,depth,ResHide);
if (chance(8))
{
	instance_create_depth(x-32,y,depth,ResFood);
}