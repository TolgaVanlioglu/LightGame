//draw_self();

if(alive)
{
	gpu_set_blendmode(bm_add);
	draw_circle_color(x,y,24,image_blend,c_black,0);
	//draw_ellipse_color(x-8,y-8,x+8,y+8,image_blend,c_black,0);
	gpu_set_blendmode(bm_normal);
	draw_sprite_ext(s_point,1,x + arrow_dist*dcos(360-angle),y + arrow_dist*dsin(360-angle),1,1,angle,c_white,1);
}
draw_text(10,10,boost_spd);