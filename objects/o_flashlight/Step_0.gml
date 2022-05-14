//image_blend = col_inv(o_lightcontroller.col_light);
var spd = speed, dir = direction, col = image_blend, mouse_dir = point_direction(x,y,mouse_x,mouse_y);
if(alive == 1)
{
	/*
	#region change level
	if(x < 48)
	{
		global.start_side = 2;
		global.curr_game_room--;
		room_goto(global.game_room[global.curr_game_room]);
	}
	else if(x > 1680)
	{
		global.start_side = 4;
		global.curr_game_room++;
		room_goto(global.game_room[global.curr_game_room]);
	}
	else if(y < 48)
	{
		global.start_side = 3;
		global.curr_game_room-=3;
		room_goto(global.game_room[global.curr_game_room]);
	}
	else if(y > 924)
	{
		global.start_side = 1;
		global.curr_game_room+=3;
		room_goto(global.game_room[global.curr_game_room]);
	}
	#endregion
	*/
	#region check for collision
	var xx = x, yy = y, valive = 1;
	with(o_glow)
	{
		switch(type)
		{
			case "block":
				if(image_angle != 0)
				{
					var vang = 360 - point_direction(x, y, xx, yy) + image_angle;
					var vdis = point_distance(x, y, xx, yy) - 24; //subtract player radius
					draw_circle(x+vdis*dcos(vang), y+vdis*dsin(vang), 5, 0);
					if(x+vdis*dcos(vang) > gx0 && x+vdis*dcos(vang) < gx1 && y+vdis*dsin(vang) > gy0 && y+vdis*dsin(vang) < gy1)
					{
						valive = 0.9;
					}
				}
				else
				{
					if(xx > gx0-24 && xx < gx1+24 && yy > gy0-24 && yy < gy1+24)
						valive = 0.9;
				}
				break;
			case "circle":
				if(point_distance(x, y, xx, yy) < size + 24)
				{
					valive = 0.9;
				}
				break;
		}
	}
	//if collided do death particles
	if(valive != 1)
	{
		for(var a = -5; a < 5; a++)
		{
			with(instance_create_layer(x,y,"layer_particle",o_flashlight_spark))
			{
				size = 3*irandom_range(3,7);
				speed = spd+random(1);
				direction = dir+a+random_range(-2,2);
				light = col;
			}
		}
	}
	alive = valive;
	#endregion
}
else //if dead do death fade
{
	var olc = o_lightcontroller.col_light;
	//o_lightcontroller.col_light = o_lightcontroller.col_shadow;
	
	//if(o_lightcontroller.col_shadow != o_lightcontroller.col_light)
	if(alive > 0)
	{
		o_lightcontroller.col_light = merge_color(o_lightcontroller.col_shadow, olc, alive);
		alive -= 0.1;
	}
	else
		alive = 0;
}

if(speed != 0 && alive)
{
	var sp = speed/5;
	instance_create_layer(x+random_range(-sp,sp),y+random_range(-sp,sp),layer,o_flashlight_trail);
//	instance_create_layer(x+hspeed,y+vspeed,layer,o_flashlight_trail);
}
if(use_arrows)
{
	var turnL = keyboard_check(vk_left) - keyboard_check(vk_right);
	if(keyboard_check(vk_up))
	{
		if(speed < boost_spd-1)
			speed += accel;
		else
			speed = boost_spd;
	}
	else
	{
		if(speed > 0.1)
		{
			speed -= accel;
		}
		else
		{
			speed = 0;
		}
	}
	if(turnL != 0)
	{
		if(abs(rot_spd) < rot_spd_max)
			rot_spd += turnL*rot_accel;
		else
			rot_spd = turnL*rot_spd_max;
			
		angle += rot_spd;
		direction = angle;
	}
	else
		rot_spd = 0;
}
else
{
	angle = mouse_dir;
	if(!mouse_check_button(mb_right) && point_distance(x,y,mouse_x,mouse_y) > 16 && alive)
	{
		if(speed < boost_spd-1)
			speed += accel;
		else
			speed = boost_spd;
		direction = angle;
	}
	else
	{
		if(speed > 0.1)
		{
			speed -= accel;
		}
		else
		{
			speed = 0;
		}
	}
}
//fiyah on left click
if(mouse_check_button_pressed(mb_left)) 
{
	with(instance_create_layer(x,y,layer,o_flashlight_shot))
	{
		speed = 15;
		direction = mouse_dir;
		light = col;
	}
	//if(speed != 0)
	//	speed -= accel;
}

//image_angle = angle;

