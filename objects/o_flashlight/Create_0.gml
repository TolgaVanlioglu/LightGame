angle = 0;
maxspd = 9;
accel = 0.1;
boost_spd = 3;
arrow_dist = 60 + 10*boost_spd;
rot_spd = 0;
rot_spd_max = 10;
rot_accel = 0.5;
use_arrows = 0;
alive = 1;
switch(global.start_side)
{
	case 1:
		y = 48;
		break;
	case 3:
		y = 924;
		break;
	case 2:
		x = 1680;
		break;
	case 4:
		x = 48;
		break;
}