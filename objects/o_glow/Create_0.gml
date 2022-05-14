type = "block";
var l = 3000;
def_angle = image_angle;
dmg_time = 5;
image_angle = 0;
vertBL = new Ray2(x, y, l);
vertUL = new Ray2(x, y, l);
vertBR = new Ray2(x, y, l);
vertUR = new Ray2(x, y, l);

edgeU = new Edge2(x, y, x, y);
edgeB = new Edge2(x, y, x, y);
edgeL = new Edge2(x, y, x, y);
edgeR = new Edge2(x, y, x, y);
event_user(2);
image_angle = def_angle;
gx0 = vertUL.x0;
gx1 = vertBR.x0;
gy0 = vertUL.y0;
gy1 = vertBR.y0;

event_user(2);

lit = 0;
lighter = o_lightcontroller;
source = lighter.obj_source;