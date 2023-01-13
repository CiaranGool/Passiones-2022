/// @description Insert description here
var p = instance_nearest(x,y,Obj_Villager);

if (point_distance(x,y,p.x,p.y) < 96)
{
	global.hide_count+=2;
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