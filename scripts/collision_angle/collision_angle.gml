// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_angle_list(x, y, ang0, ang1, obj, id)
{
	var num = 0;
	var onum = instance_number(obj);
	for(var a = 0; a < onum; a++)
	{
		var inst = instance_find(obj, a);
		if(angle_diff(ang0, point_direction(x, y, inst.x, inst.y)) > ang1)
		{
			ds_list_add(id.blcks[0,0], inst);
			num++;
		}
	}
	return num;
}