// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Edge2(_x0, _y0, _x1, _y1) constructor
{
	x0 = _x0;
	y0 = _y0;
	x1 = _x1;
	y1 = _y1;
	
	function use_verts(vert0, vert1)
	{
		x0 = vert0.x0;
		y0 = vert0.y0;
		x1 = vert1.x0;
		y1 = vert1.y0;
	}
	
	function display(xoffs, yoffs, width, col)
	{
		draw_line_width_color(x0+xoffs, y0+yoffs, x1+xoffs, y1+yoffs, width, col, col);
	}
}