if(hits != -1)
{
	hits--;
	polygon--;
	angles = 360/polygon;
	if(hits == 0)
	{
		instance_destroy();
	}
}