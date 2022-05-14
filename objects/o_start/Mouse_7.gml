global.game_room = array_create(9,room);

global.game_room[0] = room_game_TL_0;
global.game_room[1] = room_game_T_0;
global.game_room[2] = room_game_TR_0;

global.game_room[3] = room_game_L_0;
global.game_room[4] = room_game_M_0;
global.game_room[5] = room_game_R_0;

global.game_room[6] = room_game_BL_0;
global.game_room[7] = room_game_B_0;
global.game_room[8] = room_game_BR_0;

global.curr_game_room = 4;
global.start_side = 0;
room_goto(room_game_def12);
