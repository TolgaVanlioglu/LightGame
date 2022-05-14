draw_set_color(image_blend);

for(var a = 0; a < polygon; a++)
{
	draw_triangle(x,y,x+size*dcos(image_angle+a*angles),y+size*dsin(image_angle+a*angles),x+size*dcos(image_angle+(a+1)*angles),y+size*dsin(image_angle+(a+1)*angles),0);
}
/*
for(var a = 0; a < polygon-1; a++)
{
	vert[a].pointAway(source);
	if(a<polygon)
		draw_triangle(x,y,vert[a].x0,vert[a].y0,vert[a+1].x0,vert[a+1].y0,0);
	else
		draw_triangle(x,y,vert[a].x0,vert[a].y0,vert[0].x0,vert[0].y0,0);
}
*/

//draw_triangle(x,y,vert[0].x0,vert[0].y0,vert[1].x0,vert[1].y0,0);
//draw_triangle(x,y,vert[1].x0,vert[1].y0,vert[2].x0,vert[2].y0,0);
//draw_triangle(x,y,vert[2].x0,vert[2].y0,vert[0].x0,vert[0].y0,0);


//draw_triangle(vertR.x0,vertR.y0,vertU.x0,vertU.y0,vertL.x0,vertL.y0,0)
draw_set_color(c_white);
