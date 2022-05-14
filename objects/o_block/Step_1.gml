image_index = 0;
image_blend = (o_lightcontroller.col_shadow);
if(is_rotating)
{
	image_angle+=rot_spd;
	event_user(2);
}
/*
if(image_angle != def_angle)
{
	var Ax = dcos(image_angle)*(image_xscale*16)-1, Ay = -dsin(image_angle)*(image_xscale*16)-1;
	var Bx = dcos(90-image_angle)*(image_yscale*16)-1, By = dsin(90-image_angle)*(image_yscale*16)-1;
	//vertUL = new Ray2(x-1,y-1,l);
	vertUR.x0 = x+Ax;
	vertUR.y0 = y+Ay;
	vertBL.x0 = x+Bx;
	vertBL.y0 = y+By;
	vertBR.x0 = x+Ax+Bx+1;
	vertBR.y0 = y+Ay+By+1;
}

/*
vertBL = new Ray2(x+Bx, y+By, l);
vertBR = new Ray2(x+Ax+Bx+1, y+Ay+By+1, l);