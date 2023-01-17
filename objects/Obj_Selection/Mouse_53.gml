/// @description Insert description here
// You can write your code in this editor
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