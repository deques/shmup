/// @description 

x += (h_spd * move_dir);
step += h_spd;

if (step >= minMax) {
	move_dir *= -1;
	step = 0;	
}

if (can_shoot == true) {
	with(instance_create_layer(x, y, "Player", oMonsterBullet)) {
			vSpd = 1;
	}
	can_shoot = false;
	alarm[0] = can_shoot_timer;
	
}