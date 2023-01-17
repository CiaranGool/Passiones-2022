if (Selected)
{
	draw_sprite_ext(sprite_index,-1,x,y+3.5,1.1,1.1,image_angle,c_fuchsia,.7);
	
}
draw_self();
if (hunger > 5)
{
	draw_text_transformed(x,y-sprite_height*1.5,"Hunger",.75,.75,0);
	draw_set_color(c_gray)
	draw_rectangle(x-sprite_width/2,y-sprite_height*1.1,x+sprite_width/2,y-sprite_height*1.05,false);
	draw_set_color(c_lime);
	draw_rectangle(x-sprite_width/2,y-sprite_height*1.1,x-(sprite_width/2)+((hunger/100)*sprite_width/2),y-sprite_height*1.05,false);
	draw_set_color(c_white);
}

if (!inside_view() && global.lines)
{
	draw_set_color(c_red);
	draw_arrow(
	camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,
	x,
	y,
	12
	);
	draw_set_color(c_white);
}