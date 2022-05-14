//vertU = new Ray2(x,y,1000);
//vertR = new Ray2(x,y,1000);
//vertL = new Ray2(x,y,1000);
image_blend = o_lightcontroller.col_light;

lighter = o_lightcontroller;
source = lighter.obj_source;
type = "circle";
polygon = hits+2;
angles = 360/polygon;

for(var a = 0; a < polygon; a++)
	vert[a] = new Ray2(x,y,1000);

event_user(2);