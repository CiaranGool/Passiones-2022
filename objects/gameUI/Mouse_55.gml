var menu = get_integer("insert a number to do the following:\n1: build small building.\n2:Suicide.",0);

switch (menu)
{
	case 1:
	with (Obj_Villager)
	{
		if (Selected && !busy)
		{
			if ( global.wood_count>15 && global.stone_count>15 && global.food_count>5)
			{
				global.stone_count -= 15;
				global.wood_count -= 15;
				global.food_count -= 5;
				if (!collision_rectangle(mouse_x,mouse_y,mouse_x+sprite_get_width(SprHut_0),mouse_y+sprite_get_height(SprHut_0),all,true,false))
				{
					var hut = instance_create_depth(mouse_x,mouse_y,depth,Hut_0);
					myhut = hut;
					global.Housing_count ++;
				}
			}
		}
	}
	break;
	case 2:
	with (Obj_Villager)
	{
		if (Selected && !busy)
		{
			instance_destroy();
		}
	}
	break;
	case 3: 
	if (global.Housing_count > 0 && global.food_count > 20 && instance_number(Obj_Villager) < global.Housing_count)
	{
		global.food_count-= 20;
		instance_create_depth(mouse_x,mouse_y, depth, Obj_Villager);
	}
	default:
}