/// @description 
image_speed = 0;
image_index = 1;
parent = noone;
option_id = noone;
mode = noone;

angle = 0;

shoot = false;

state = MODE_STATE.IDLE;
state_change_time = 1 / 10;
state_change_timer = 0;
p0 = noone;
p1 = noone;
p2 = noone;

sword_timer = 0;
dir = 45;

function reset_t () {
	state_change_timer = 0;
	p0 = noone;
	p1 = noone;
	p2 = noone;	
}

