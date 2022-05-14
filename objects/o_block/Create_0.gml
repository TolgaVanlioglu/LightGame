var l = 1000;
def_angle = image_angle;
image_blend = o_lightcontroller.col_light;
vertBL = new Ray2(x, y, l);
vertUL = new Ray2(x, y, l);
vertBR = new Ray2(x, y, l);
vertUR = new Ray2(x, y, l);

event_user(2);
/*
var Ax = 8*image_yscale;
var Ay = 8*image_xscale;
var Bx = Ax;
var By = Ay;
var ang1 = darctan(Ax/Ay)+image_angle;
var ang2 = ang1 + 2*(90-ang1);
//show_debug_message(ang)
var L = sqrt(Ax*Ax+Ay*Ay);
Ax = lengthdir_x(L, ang1);
Ay = lengthdir_y(L, ang1);
Bx = lengthdir_x(L, ang2);
By = lengthdir_y(L, ang2);

vertBL = new Ray2(x-Ax-1,y-Ay-1,l);
vertUL = new Ray2(x+By-1, y+By-1, l);
vertBR = new Ray2(x-Bx-1, y-By-1, l);
vertUR = new Ray2(x+Ax-1, y+Ay-1, l);
*/
/*
//var Ax = dcos(image_angle)*(image_xscale*16)-1, Ay = -dsin(image_angle)*(image_xscale*16)-1;
//var Bx = dcos(90-image_angle)*(image_yscale*16)-1, By = dsin(90-image_angle)*(image_yscale*16)-1;
vertUL = new Ray2(x-1,y-1,l);
vertUR = new Ray2(x+Ax, y+Ay, l);
vertBL = new Ray2(x+Bx, y+By, l);
vertBR = new Ray2(x+Ax+Bx+1, y+Ay+By+1, l);
*/
lit = 0;
lighter = o_lightcontroller;
source = lighter.obj_source;