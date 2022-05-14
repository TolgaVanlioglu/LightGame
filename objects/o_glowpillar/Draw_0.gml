if(point_distance(x,y,mouse_x,mouse_y) < rX)
	draw_set_color(c_white);
else
	draw_set_color(image_blend);
draw_ellipse(x-1-rX, y-1-rY, x+rX-1, y+rY-1, 0);
draw_set_color(c_white);