/// @description Insert description here
// You can write your code in this editor

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

name = choose(choose("Bob","Tumor","Rapist","Racist","Black Death","luuk","Paul","Pim"),"Gary","Stephanie","Mara","Bomber","Cancer","Krebs","Gaymer","LGBTQ+WAPPIE","The Wok","James","Black Jack");
