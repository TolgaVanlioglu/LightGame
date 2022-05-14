var xx = x, yy = y, ebler = id;
with(o_glow)
{
	switch(type)
	{
		case "block":
			var vang = 360 - point_direction(x, y, xx, yy) + image_angle;
			var vdis = point_distance(x, y, xx, yy) - 3; //subtract player radius
			draw_circle(x+vdis*dcos(vang), y+vdis*dsin(vang), 5, 0);
			if(x+vdis*dcos(vang) > gx0 && x+vdis*dcos(vang) < gx1 && y+vdis*dsin(vang) > gy0 && y+vdis*dsin(vang) < gy1)
			{
				event_user(4);
				instance_destroy(other);
			}
			break;
		case "circle":
			if(point_distance(x, y, xx, yy) < size)
			{
				event_user(4);
				instance_destroy(other);
			}
			break;
	}
}

with(o_switch)
{
	if(ebler != enabler)
		if(xx > x-32 && xx < x+32 && yy > y-40 && yy < y+40)
		{
			enabler = ebler;
			event_user(0);
		}
}