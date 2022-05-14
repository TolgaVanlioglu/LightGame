gpu_set_blendmode(bm_subtract);
draw_surface(global.sur_lights,obj_source.x-864,obj_source.y-486);

//draw_surface_ext(global.sur_lights,0,0,3,3,0,c_white,1);
gpu_set_blendmode(bm_add);

//draw_surface(global.sur_lights_2,0,0);
//draw_surface(global.sur_lights,0,0);
gpu_set_blendmode(bm_normal);
with(o_switch)
{
	if(active)
		draw_sprite_ext(sprite_index,1,x,y,1,1,0,image_blend,1);
}

//col_light = make_color_hsv(obj_source.x%256, 255, 128);
//col_shadow = make_color_hsv(obj_source.y%256, 100, 255);