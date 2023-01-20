/// @description Insert description here
//Remove hp from a Bull or Tiger on hit
with (other) {
	if (object_index == Bull || object_index == Tiger)
	{
		hp--;
	}
	else
	{
    instance_destroy();
	}
}
//Deletion of trap
instance_destroy();