/// @desc Handle shaking
n+=30;
if (n>360)
{
	n = 0;
}
//Animation
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