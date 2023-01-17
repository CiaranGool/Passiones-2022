/// @description Draw UI


draw_sprite_stretched(Resources_Bar,-1,0,0,view_wport[0],64);
draw_set_font(fntUI_Default);
draw_set_halign(fa_center);

draw_text(camera_get_view_x(0)+view_wport[0]/2,0,"Food:" + string(global.food_count) + string("      Hide:") + string(global.hide_count) + string("      Flint:")+string(global.flint_count) + string("      Wood:")+string(global.wood_count)+string("      Stone:") + string(global.stone_count)+string("      Population:")+string(instance_number(Obj_Villager))+string("      Housing:")+string(global.Housing_count));

draw_sprite(Resources,4,camera_get_view_x(0)+view_wport[0]/4.6,55);
draw_sprite(Resources,5,camera_get_view_x(0)+view_wport[0]/3.35,55);
draw_sprite(Resources,3,camera_get_view_x(0)+view_wport[0]/2.61,55);
draw_sprite(Resources,0,camera_get_view_x(0)+view_wport[0]/2.15,55);
draw_sprite(Resources,2,camera_get_view_x(0)+view_wport[0]/1.81,55);
draw_sprite_ext(Spr_VillagersDown,0,camera_get_view_x(0)+view_wport[0]/1.52,55,0.6,0.6,0,c_white,1);
draw_sprite_ext(SprHut_0,2,camera_get_view_x(0)+view_wport[0]/1.3,40,0.16,0.16,0,c_white,1);
