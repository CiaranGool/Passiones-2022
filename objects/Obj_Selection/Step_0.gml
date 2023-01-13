/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_right))
{
	mouse_start_x = mouse_x;
	mouse_start_y = mouse_y;
	active = true;
}

if (mouse_check_button(mb_right))
{
	mouse_end_x = mouse_x;
	mouse_end_y = mouse_y;
}

if (mouse_check_button_released(mb_right))
{
	active = false;
}

var villager = collision_rectangle(mouse_start_x, mouse_start_y, mouse_end_x, mouse_end_y,Par_Villager,false,false);

if (villager && active)
{
	if (villager.task == TASK_NONE)
	{
		villager.Selected = true;
		villager = collision_rectangle(mouse_start_x, mouse_start_y, mouse_end_x, mouse_end_y,Par_Villager,false,false);
	}
}