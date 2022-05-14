// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Ray2(xx, yy, length) constructor
{
	x0 = xx;
	y0 = yy;
	x1 = xx;
	y1 = yy;
	col = c_white;
	len = length;

	function pointAway(obj)
	{
		calcPoint2(360-point_direction(obj.x,obj.y,x0,y0));
	}
	
	function calcPoint2(dir)
	{
		x1 = dcos(dir)*len + x0;
		y1 = dsin(dir)*len + y0;
	}
	
	function trapezoid(next)
	{
		var xxx = -o_flashlight.x+864, yyy = -o_flashlight.y+486;
		draw_triangle(x0+xxx,y0+yyy,x1+xxx,y1+yyy,next.x1+xxx,next.y1+yyy,0);
		draw_triangle(x0+xxx,y0+yyy,next.x0+xxx,next.y0+yyy,next.x1+xxx,next.y1+yyy,0);
	}
	
	function calcCol(obj)
	{
		col = make_color_hsv(0,0,point_distance(x0,y0,obj.x,obj.y)*2);
	}
	
	function display()
	{
		draw_line(x0,y0,x1,y1);
	}
}