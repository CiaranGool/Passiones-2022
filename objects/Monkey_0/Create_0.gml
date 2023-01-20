/// @description Init
//©Roderick F 2023
stealing = false;
fleeing = false;

goods = 0;

targetloc_x = x;
targetloc_y = y;

xoffset = 0;
yoffset = 0;

whatiwant = 0;

mystealtype = 0;

woodsprite = choose(0,1);

enum stealtype {
	food,
	wood,
	stone,
	flint
}

stolentype = stealtype.food;

alarm[0] = 60;

//Resource part
n = 0;
shaking = false;
hp = 2;
cutting = 0;

alarm[1]=1;