var l = 1000;
rX = image_xscale*24;
rY = image_yscale*24;
//cX = x+rX-1;
//cY = y+rY-1;
vertR = new Ray2(x, y, l);
vertL = new Ray2(x, y, l);

lighter = o_lightcontroller;
source = lighter.obj_source;

type = "circle";
size = image_xscale*24;
image_blend = o_lightcontroller.col_light;