for(var a = 0; a < polygon; a++)
{
	vert[a].pointAway(source);
	if(a!=polygon-1)
		vert[a].trapezoid(vert[a+1]);
	else
		vert[a].trapezoid(vert[0]);
}
/*
vertU.pointAway(source);
vertL.pointAway(source);

vertR.trapezoid(vertL);
vertL.trapezoid(vertU);
vertU.trapezoid(vertR);