/// @description Kill villager
//Death message of villager on hit
with (other)
{
	show_message_async(Name + choose(" has died from a bull"," has been crushed by a bull", " has been pierced by the horns of a bull"," has been trampled by a bull"));
	instance_destroy();	
}