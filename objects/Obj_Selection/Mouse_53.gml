/// @description Object selection
//Assign villagers to objects
selectionobj = collision_point(mouse_x,mouse_y,all,true,true);
if (!selectionobj && selectionobj !=Obj_Villager)
{
	cobject = noone;
}
else
	{
		cobject = selectionobj;
		with (Obj_Villager)
		{
			if (Selected && !busy)
			{
				interest = cobject;
			}
		}
	}