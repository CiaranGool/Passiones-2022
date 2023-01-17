draw_self();
if (goods>0)
{
	switch (stolentype)
	{
		case stealtype.flint:
		draw_sprite_ext(Resources,3,x,y-32,1,1,0,c_white,.5);
		break;
		case stealtype.food:
		draw_sprite_ext(Resources,4,x,y-32,1,1,0,c_white,.5);
		break;
		case stealtype.stone:
		draw_sprite_ext(Resources,2,x,y-32,1,1,0,c_white,.5);
		break;
		case stealtype.wood:
		draw_sprite_ext(Resources,woodsprite,x,y-32,1,1,0,c_white,.5);
		break;
	}
}