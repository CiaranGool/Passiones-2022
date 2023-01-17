var menu = get_integer("insert a number to do the following:\n1: build small building.\n2:Suicide.\n3:Create a new villager. \n4:Build a trap.",0);

switch (menu)
{
	case 1:
	with (Obj_Villager)
	{
		if (Selected && !busy)
		{
			if ( global.wood_count>10 && global.stone_count>15 && global.food_count>5)
			{
				if (!collision_rectangle(mouse_x,mouse_y,mouse_x+sprite_get_width(SprHut_0)/2,mouse_y+sprite_get_height(SprHut_0)/2,all,true,false))
				{
					global.stone_count -= 15;
					global.wood_count -= 15;
					global.food_count -= 5;
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
	break;
	case 4:
	if (!collision_circle(mouse_x,mouse_y,sprite_get_height(SprTrap),Trap,true,true) && !collision_circle(mouse_x,mouse_y,sprite_get_height(SprTrap),Hut_0,true,true) && !collision_circle(mouse_x,mouse_y,sprite_get_height(SprTrap)*2,Par_animals,true,true) && global.flint_count>10 && global.wood_count>5)
				{
					 instance_create_depth(mouse_x,mouse_y,depth,Trap);
					 global.flint_count -=10;
					 global.wood_count -=5;
				}
	break;
	default:
}