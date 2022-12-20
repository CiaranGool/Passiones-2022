/// @description Insert description here
/*
|©Roderick F 2023
| Met toestemming gebruikt.
|
*/

//Camera movement//
camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+xoffset,camera_get_view_y(view_camera[0])+yoffset);

//Horizontal
if (window_mouse_get_x()>window_get_width()-64)
{
	if (xoffset<8)
	{
		xoffset+=.5;
	}
	
}
else if (xoffset > 0)
	{
		if (xoffset > .25)
		{
			xoffset = 0;
		}
		else
		{
			xoffset-=.15;
		}
	}
	
if (window_mouse_get_x()<64)
{
	if (xoffset>-8)
	{
		xoffset-=.5;
	}
	
}
else if (xoffset < 0)
	{
		if (xoffset < -.25)
		{
			xoffset = 0;
		}
		else
		{
			xoffset+=.15;
		}
		
	}
//Vertical
if (window_mouse_get_y()>window_get_height()-64)
{
	if (yoffset<8)
	{
		yoffset+=.5;
	}
	
}
else if (yoffset > 0)
	{
		if (yoffset > .25)
		{
			yoffset = 0;
		}
		else
		{
			yoffset-=.15;
		}
	}
	
if (window_mouse_get_y()<64)
{
	if (yoffset>-8)
	{
		yoffset-=.5;
	}
	
}
else if (yoffset < 0)
	{
		if (yoffset < -.25)
		{
			yoffset = 0;
		}
		else
		{
			yoffset+=.15;
		}
		
	}
	
//Fix for out of boundary view
//horizontal
if (camera_get_view_x(view_camera[0]) < 0) 
{
	camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0]));
}
if (camera_get_view_x(view_camera[0]) > room_width) 
{
	camera_set_view_pos(view_camera[0],room_width,camera_get_view_y(view_camera[0]));
}
//Vertical
if (camera_get_view_y(view_camera[0]) < 0) 
{
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),0);
}

if (camera_get_view_y(view_camera[0]) > room_height-camera_get_view_height(view_camera[0])) 
{
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),room_height-camera_get_view_height(view_camera[0]));
}