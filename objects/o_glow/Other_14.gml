if(hits != -1)
{
	alarm[0] = dmg_time;
	image_blend = c_white;
	hits--;
	if(hits == 0)
	{
		instance_destroy();
	}
}