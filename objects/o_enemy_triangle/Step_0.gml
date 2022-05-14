image_angle += rot_spd;
rot_spd = o_flashlight.speed;
if(image_angle > 360)
	image_angle -= 360;
event_user(2);