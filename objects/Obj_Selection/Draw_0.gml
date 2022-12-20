/// @description Draw selection
if (active)
{
	draw_set_alpha(.5);
	draw_rectangle_color(mouse_start_x,mouse_start_y,mouse_end_x,mouse_end_y,c_blue,c_blue,c_blue,c_blue,true);
	draw_rectangle_color(mouse_start_x-1,mouse_start_y-1,mouse_end_x-1,mouse_end_y-1,c_blue,c_blue,c_blue,c_blue,false);
}
draw_set_alpha(1);