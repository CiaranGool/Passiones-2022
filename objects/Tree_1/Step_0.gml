/// @desc Handle shaking
n+=45;
if (n>360)
{
	n = 0;
}

if (shaking)
{
	x += .25*sin(degtorad(n));
}
else
	{
		x = xstart;
	}
if (hp < 1)
{
	instance_destroy();
}