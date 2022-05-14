gpu_set_blendmode(bm_add);
draw_circle_color(x,y,size,light,c_black,0);
gpu_set_blendmode(bm_normal);
light = col_set_val(light,color_get_value(light)-5);
if(color_get_value(light) <= 0)
	instance_destroy();