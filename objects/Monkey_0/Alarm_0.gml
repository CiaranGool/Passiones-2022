//©Roderick F 2023
alarm[0] = 60;

whatiwant = irandom_range(5,10);

mystealtype = choose(stealtype.food, stealtype.stone, stealtype.wood, stealtype.flint);

xoffset = choose(64,-64);
yoffset = choose(64,-64);

if (goods>0 && chance(3))
{
	goods--;
}