if(angle_diff((source.angle+180)%360, point_direction(x, y, source.x, source.y)) < lighter.source_angle+16)
{
	//image_index = 1;
	vertR.pointAway(source);
	vertL.pointAway(source);
			
	vertR.calcCol(source);
	vertL.calcCol(source);
		
	vertR.trapezoid(vertL);
	//vertL.trapezoid(vertUR);
}