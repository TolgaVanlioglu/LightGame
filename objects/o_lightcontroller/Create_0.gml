function draw_shadow(os, obj)
{
	with(obj)
	{
		image_index = 1;
		vertUL.pointAway(os);
		vertUR.pointAway(os);
		vertBL.pointAway(os);
		vertBR.pointAway(os);
			
		vertUL.calcCol(os);
		vertUR.calcCol(os);
		vertBL.calcCol(os);
		vertBR.calcCol(os);
		
		vertUL.trapezoid(vertUR);
		vertUR.trapezoid(vertBL);
		vertBL.trapezoid(vertBR);
		vertBR.trapezoid(vertUL);
	}
}

hue = 0;
optimized_shadows = 0;
col_bw = 0;
col_shadow = col_inv(make_color_rgb(16,0,0));
col_light = col_inv(c_red)//make_color_rgb(200,255,0));
obj_source = o_flashlight;
obj_source_scnd = o_light;
source_range = 500;
source_distloop = source_range/10;
source_angle = 180;
source_frag = 2*source_angle/5;
light_type = "point"; //"laser", "flashlight", "point"
//global.sur_lights = surface_create(576,324);
global.sur_lights = surface_create(1728,972);
global.sur_lights_2 = surface_create(576,324);

global.graphics_multiplier = 3;
//room_set_viewport(0,1,1,0,0,576*global.graphics_multiplier,324*global.graphics_multiplier);

for(var a = 0; a < source_frag+1; a++)
{
	blcks[a,0] = ds_list_create();
	blcks[a,1] = 0;
}
alarm[0] = 300;
fpss=0;

//pick color
if(!col_bw)
{
	col_light = col_set_hue(col_light, irandom(255));
	col_shadow = col_inv(col_set_val(col_light,32));
	o_flashlight.image_blend = col_inv(o_lightcontroller.col_light);
	with(o_glow)
	{
		image_blend = col_set_sat(o_lightcontroller.col_light, 128);
		def_col = image_blend;
	}
//	with(o_enemy_triangle)
//		col = (o_lightcontroller.col_light);
}
else
{
	col_light = c_black;
	col_shadow = c_white//make_color_hsv(0,0,223);
	o_flashlight.image_blend = c_white;
	with(o_glow)
	{
		image_blend = c_black;
		def_col = image_blend;
	}
//	with(o_enemy_triangle)
//		col = (o_lightcontroller.col_light);
}
//if(hue > 255)
//	hue -= 255;
