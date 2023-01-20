/// @description Check every 45 seconds
alarm[2] = seconds*45;
//Chance for random death of old age
if (chance(2))
{
	instance_destroy();
}