//©Roderick F 2023
if (other.task != TASK_SKINNING && !other.busy && goods < 1)
{
	switch (mystealtype)
	{
		case stealtype.food:
		if (global.food_count > whatiwant)
			{
				global.food_count-=whatiwant;
				goods+=whatiwant;
				stolentype = mystealtype;
			}
		break;
		case stealtype.stone:
		if (global.stone_count > whatiwant)
			{
				global.stone_count-=whatiwant;
				goods+=whatiwant;
				stolentype = mystealtype;
			}
		break;
		case stealtype.wood:
		if (global.wood_count > whatiwant)
			{
				global.wood_count-=whatiwant;
				goods+=whatiwant;
				stolentype = mystealtype;
			}
		break;
		case stealtype.flint:
		if (global.flint_count > whatiwant)
			{
				global.flint_count-=whatiwant;
				goods+=whatiwant;
				stolentype = mystealtype;
			}
		break;
	}
}