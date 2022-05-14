//image_blend = o_lightcontroller.col_light;
var ang = 90-point_direction(x-1,y-1, source.x, source.y);
vertR.x0 = x-1+dcos(ang)*rX;
vertR.y0 = y-1+dsin(ang)*rY;
vertL.x0 = x-1-dcos(ang)*rX;
vertL.y0 = y-1-dsin(ang)*rY;

