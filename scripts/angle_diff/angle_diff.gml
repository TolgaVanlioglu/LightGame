// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function angle_diff(ang1, ang2)
{
	if(abs(ang1 - ang2) < 180)
		return abs(ang1 - ang2);
	else
		return (360-max(ang1,ang2)+min(ang1,ang2));
}