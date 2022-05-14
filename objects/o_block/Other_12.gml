var Ax = 8*image_yscale;
var Ay = 8*image_xscale;
var Bx = Ax;
var By = Ay;
var ang1 = darctan(Ax/Ay)+image_angle;
var ang2 = 90+darctan(By/Bx)+image_angle//ang1 + 2*(90-ang1);
//show_debug_message(ang)
var L = sqrt(Ax*Ax+Ay*Ay);
Ax = lengthdir_x(L, ang1);
Ay = lengthdir_y(L, ang1);
Bx = lengthdir_x(L, ang2);
By = lengthdir_y(L, ang2);

vertUR.x0 = x+Ax-1;
vertUR.y0 = y+Ay-1;

vertUL.x0 = x+Bx-1;
vertUL.y0 = y+By-1;

vertBL.x0 = x-Ax-1;
vertBL.y0 = y-Ay-1;

vertBR.x0 = x-Bx-1;
vertBR.y0 = y-By-1;