draw_self();
/*
var glo = col_set_val(image_blend, 10);
gpu_set_blendmode(bm_add);
for(var a = 0; a < 10; a++)
{
	draw_sprite_ext(s_glowblock, 0, x, y, image_xscale+a/10, image_yscale+a/10, image_angle, glo, 1);
}
gpu_set_blendmode(bm_normal);
/*
var vang = 360 - point_direction(x, y, mouse_x, mouse_y) + image_angle;
var vdis = point_distance(x, y, mouse_x, mouse_y);
draw_circle(x+vdis*dcos(vang), y+vdis*dsin(vang), 5, 0);
if(x+vdis*dcos(vang) > gx0 && x+vdis*dcos(vang) < gx1 && y+vdis*dsin(vang) > gy0 && y+vdis*dsin(vang) < gy1)
{
	show_debug_message("A");
	image_blend = c_white;
}
else
{
	show_debug_message("B");
	image_blend = (o_lightcontroller.col_light);
}
/*
draw_circle(vertUL.x0,vertUL.y0,4,0);
draw_text(vertUL.x0,vertUL.y0,"UL");
draw_circle(vertUR.x0,vertUR.y0,4,0);
draw_text(vertUR.x0,vertUR.y0,"UR");
draw_circle(vertBR.x0,vertBR.y0,4,0);
draw_text(vertBR.x0,vertBR.y0,"BR");
draw_circle(vertBL.x0,vertBL.y0,4,0);
draw_text(vertBL.x0,vertBL.y0,"BL");