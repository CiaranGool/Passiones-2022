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