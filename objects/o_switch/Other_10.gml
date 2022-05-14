active = !active;
image_index = active;

if(!active)
	image_blend = c_white;
else
	image_blend = o_lightcontroller.col_light;