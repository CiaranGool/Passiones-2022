function walk(wspeed){
	var walking = mp_potential_step(targetloc_x,targetloc_y,wspeed,false);
	if (!walking)
		{
				image_speed = 1;
		}
		else
			{
				image_speed = 0;
				image_index = 0;
			}
}