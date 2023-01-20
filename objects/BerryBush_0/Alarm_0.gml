/// @description Stop shaking
alarm[0] = 60;
//Time to remove the bush
if (cutting>0)
{
	hp-=cutting;
shaking = false;
alarm[1]=1;
}