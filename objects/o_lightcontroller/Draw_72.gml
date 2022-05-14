
if(!surface_exists(global.sur_lights))
	//global.sur_lights = surface_create(576,324);
	global.sur_lights = surface_create(1728,972);
if(!surface_exists(global.sur_lights_2))
	global.sur_lights_2 = surface_create(576,324);

surface_set_target(global.sur_lights);

draw_clear(col_light);

draw_set_color(col_light);
var ang1 = obj_source.angle+source_angle;
var os = obj_source, oss = obj_source_scnd, sa = source_angle, sr = source_range, cl = col_light, cs = col_shadow;
if(optimized_shadows)
{
	//var blcks;// = array_create(source_frag+1, ds_list_create()), blck_num = array_create(source_frag+1, 0);
	for(var a = 0; a < source_frag+1; a++)
	{
		ds_list_destroy(blcks[a,0]);
		blcks[a,0] = ds_list_create();
		blcks[a,1] = 0;
	}
}
/*
switch(light_type)
{
	case "flashlight":
		for(var a = 0; a < source_frag; a++)
		{
			var x0 = obj_source.x-1, y0 = obj_source.y-1;
			var x1 = obj_source.x+dcos(obj_source.angle-source_angle+a*5)*source_range, y1 = obj_source.y-dsin(obj_source.angle-source_angle+a*5)*source_range;
			
		//	draw_line(x0, y0, x1, y1);
		//	draw_triangle_color(obj_source.x, obj_source.y, obj_source.x+dcos(obj_source.angle-source_angle+a*5)*source_range, obj_source.y-dsin(obj_source.angle-source_angle+a*5)*source_range, obj_source.x+dcos(obj_source.angle-source_angle+(a+1)*5)*source_range, obj_source.y-dsin(obj_source.angle-source_angle+(a+1)*5)*source_range, col_shadow, col_light, col_light, 0);	
			//if(a < source_frag)
		//	draw_triangle_color(x0, y0, x1, y1, obj_source.x+dcos(obj_source.angle-source_angle+(a+1)*5)*source_range, obj_source.y-dsin(obj_source.angle-source_angle+(a+1)*5)*source_range, col_light, col_shadow, col_shadow, 0);	
			draw_triangle(obj_source.x, obj_source.y, obj_source.x+dcos(obj_source.angle-source_angle+a*5)*source_range, obj_source.y-dsin(obj_source.angle-source_angle+a*5)*source_range, obj_source.x+dcos(obj_source.angle-source_angle+(a+1)*5)*source_range, obj_source.y-dsin(obj_source.angle-source_angle+(a+1)*5)*source_range, 0);
			
		}
		break;
	case "laser":
		//draw_line_width_color(obj_source.x-1, obj_source.y-1, obj_source.x+dcos(obj_source.angle)*source_range, obj_source.y-dsin(obj_source.angle)*source_range, 11, col_set_sat(col_light, 16), col_set_sat(col_light, 16));
		draw_line_width_color(obj_source.x-1, obj_source.y-1, obj_source.x+dcos(obj_source.angle)*source_range, obj_source.y-dsin(obj_source.angle)*source_range, 9, col_set_sat(col_light, 32), col_set_sat(col_light, 32));
		draw_line_width_color(obj_source.x-1, obj_source.y-1, obj_source.x+dcos(obj_source.angle)*source_range, obj_source.y-dsin(obj_source.angle)*source_range, 5, col_set_sat(col_light, 64), col_set_sat(col_light, 64));
		draw_line_width_color(obj_source.x-1, obj_source.y-1, obj_source.x+dcos(obj_source.angle)*source_range, obj_source.y-dsin(obj_source.angle)*source_range, 3, col_set_sat(col_light, 128), col_set_sat(col_light, 128));
		draw_line_width_color(obj_source.x-1, obj_source.y-1, obj_source.x+dcos(obj_source.angle)*source_range, obj_source.y-dsin(obj_source.angle)*source_range, 1, col_light, col_light);
		break;
	case "point":
		draw_circle_color(obj_source.x-1,obj_source.y-1,source_range,col_light,col_light,0);
		break;
}*/

draw_set_color(col_shadow);
with(o_glow)
{
	event_user(0);
}

/*
with(o_glow)
{
	for(var a = 0; a < 10; a++)
		draw_sprite_ext(s_glowblock,0,x,y,image_xscale+a/10,image_yscale+a/10,image_angle,col_inv(cl),0.05)//(10-a)/75);
}
with(o_glowpillar)
{
	draw_set_alpha(0.05);
	for(var a = 0; a < 10; a++)
	{
		draw_ellipse_color(x-rX-a-1,y-rY-a-1,x+rX+a-1,y+rY+a-1,col_inv(cl),col_inv(cl),0)//(10-a)/75);
	}
	draw_set_alpha(1);
}*/
//draw_triangle_color(obj_source.x, obj_source.y, obj_source.x+dcos(obj_source.angle-source_angle)*source_range, obj_source.y-dsin(obj_source.angle-source_angle)*source_range, obj_source.x+dcos(obj_source.angle+source_angle)*source_range, obj_source.y-dsin(obj_source.angle+source_angle)*source_range, col_light, col_shadow, col_shadow, 0);
//draw_circle_color(obj_source.x, obj_source.y, source_range, col_light, col_shadow, 0);
//draw_clear(col_shadow);

draw_set_color(c_white);
gpu_set_blendmode(bm_normal);
surface_reset_target();

surface_set_target(global.sur_lights_2);
//gpu_set_blendmode(bm_add);
for(var a = 0; a < 10; a++)
	with(o_glow)
	{
		event_user(3);
		//draw_sprite_ext(s_glowblock,0,x,y,image_xscale+1-a/10,image_yscale+1-a/10,image_angle,col_set_val(cl,a),1)//(10-a)/75);
	}
//gpu_set_blendmode(bm_normal);
surface_reset_target();