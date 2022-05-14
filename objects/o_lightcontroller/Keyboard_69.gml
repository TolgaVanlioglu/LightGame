col_light = col_set_hue(col_light, irandom(255));
col_shadow = col_inv(col_set_val(col_light,32));

//if(hue > 255)
//	hue -= 255;

with(o_glow)
	image_blend = (o_lightcontroller.col_light);
with(o_enemy_triangle)
	col = (o_lightcontroller.col_light);
