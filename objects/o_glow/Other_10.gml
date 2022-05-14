if(angle_diff((source.angle+180)%360, point_direction(x, y, source.x, source.y)) < lighter.source_angle+16)
{
	//image_index = 1;
	vertUL.pointAway(source);
	vertUR.pointAway(source);
	vertBL.pointAway(source);
	vertBR.pointAway(source);
			
	vertUL.calcCol(source);
	vertUR.calcCol(source);
	vertBL.calcCol(source);
	vertBR.calcCol(source);
		
	vertUL.trapezoid(vertUR);
	vertUR.trapezoid(vertBL);
	vertBL.trapezoid(vertBR);
	vertBR.trapezoid(vertUL);
}