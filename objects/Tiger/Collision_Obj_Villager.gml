/// @description Kill villager
//Message when killing a villager
with (other)
{
	show_message_async(Name + choose(" has died from a tiger"," has been clawed by a tiger", " has been pierced by the teeth of a tiger"," has been trampled by a tiger","has been eaten by a tiger"));
	instance_destroy();	
}