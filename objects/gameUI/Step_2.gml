//Game ending
if (instance_number(Obj_Villager)<1)
{
	room_goto(Game_Over);
}
//Locating villagers off screen
if (keyboard_check_pressed(ord("L")))
{
	global.lines = !global.lines;
}