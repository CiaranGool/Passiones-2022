var menu = get_integer("insert a number to do the following:\n1: build small building.\n2:Suicide.",0);

switch (menu)
{
	case 1:
	break;
	case 2:
	with (Obj_Villager)
	{
		if (Selected && !busy)
		{
			instance_destroy();
		}
	}
	break;
	default:
}