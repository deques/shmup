/// @description 

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

function reset_t () {
	state_change_timer = 0;
	p0 = noone;
	p1 = noone;
	p2 = noone;	
}