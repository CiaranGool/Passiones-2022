/// @description Draw UI


draw_sprite_stretched(Resources_Bar,-1,0,0,view_wport[0],64);
draw_set_font(fntUI_Default);
draw_set_halign(fa_center);
draw_text(camera_get_view_x(0)+view_wport[0]/2,0,"Food:" + string(global.food_count) + string("      Hide:") + string(global.hide_count) + string("      Flint:")+string(global.flint_count) + string("      Wood:")+string(global.wood_count)+string("      Stone:") + string(global.stone_count)+string("      Population:")+string(instance_number(Obj_Villager)));

