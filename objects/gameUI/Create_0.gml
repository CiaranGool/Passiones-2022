/// @description Init
xoffset = 0;
yoffset = 0;

#macro TASK_NONE 0
#macro TASK_WOODCUTTING 1
#macro TASK_STONEGATHERING 2
#macro TASK_SKINNING 3
#macro TASK_FLINTGATHERING 4
#macro TASK_SEARCHING 5
#macro TASK_FOODGATHERING 6

global.food_count = 0;
global.hide_count = 0;
global.flint_count= 0;
global.wood_count = 0;
global.stone_count = 0;
global.Housing_count = 0;

global.lines = false;

alarm[0] = 30;

factor = 1;