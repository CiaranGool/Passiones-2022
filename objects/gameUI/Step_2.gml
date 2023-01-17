/// @description Insert description here
// You can write your code in this editor
if (instance_number(Obj_Villager)<1)
{
	room_goto(Game_Over);
}

if (keyboard_check_pressed(ord("L")))
{
	global.lines = !global.lines;
}