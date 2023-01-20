/// @description Init
myhut = noone;

gotohut = false;

enum dir{
	Left, Right, Up, Down
}

Selected = false;

task = TASK_NONE;

busy = false;

interest = noone;

targetloc_x = 0;
targetloc_y = 0;

alarm[0] = choose(30, 60, 20, 180);
alarm[1] = 30;

hunger = 0;

Name = choose(choose("Bob","Paul","Ben", "Luc","calor Giovanna","coral Giovanna","Delila forth"),"Gary","Stephanie","Mara","Bomber","The Wok","James","Black Jack","Bühler");
