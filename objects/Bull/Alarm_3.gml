/// @description Check every 60 seconds
alarm[3] = seconds*60;
//Random death of the bull of old age
if (chance(2))
{
	instance_destroy();
}