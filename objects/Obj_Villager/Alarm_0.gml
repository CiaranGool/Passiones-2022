alarm[0] = choose(30, 60, 20, 180);
if (!gotohut)
{
	targetloc_x = x+choose(random(128),-random(128));
	targetloc_y = y+choose(random(128),-random(128));
}
else if (instance_exists(myhut))
	{
			targetloc_x = myhut.x;
			targetloc_y = myhut.y;
	}

if (instance_exists(myhut))
{
	if (chance(3))
	{
		gotohut = true;
	}
	else
		{
			gotohut = false;
		}
}