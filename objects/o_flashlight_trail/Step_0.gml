light = col_set_hue(light, (color_get_hue(light)+0.2)%256);
light = col_set_val(light, color_get_value(light)-5);

if(color_get_value(light) <= 1)
	instance_destroy();
	
var xx = x, yy = y, valive = 1;
with(o_glow)
{
	switch(type)
	{
		case "block":
			if(image_angle != 0)
				{
					var vang = 360 - point_direction(x, y, xx, yy) + image_angle;
					var vdis = point_distance(x, y, xx, yy) - 24; //subtract player radius
					draw_circle(x+vdis*dcos(vang), y+vdis*dsin(vang), 5, 0);
					if(x+vdis*dcos(vang) > gx0 && x+vdis*dcos(vang) < gx1 && y+vdis*dsin(vang) > gy0 && y+vdis*dsin(vang) < gy1)
					{
						instance_destroy(other);
					}
				}
				else
				{
					if(xx > gx0-24 && xx < gx1+24 && yy > gy0-24 && yy < gy1+24)
						instance_destroy(other);
				}
			break;
		case "circle":
			if(point_distance(x, y, xx, yy) < size)
			{
				instance_destroy(other);
			}
			break;
	}
}