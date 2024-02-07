/// @description 

if (parent == noone)
	return;
	
if (mode == OPTION_MODE.STANDARD) {
	if (option_id == 1) {
		var dist = 10;
		_x = lengthdir_x(dist, DIRS.LEFT);
		_y = lengthdir_y(dist, DIRS.LEFT);
		
	}	else if (option_id == 2) {
		var dist = 10;
		_x = lengthdir_x(dist, DIRS.RIGHT);
		_y = lengthdir_y(dist, DIRS.RIGHT);
		
	} else if (option_id == 3) {
		var dist = 20;
		_x = lengthdir_x(dist, DIRS.LEFT - 10);
		_y = lengthdir_y(dist, DIRS.LEFT - 10);
		
	} else if (option_id == 4) {
		var dist = 20;
		_x = lengthdir_x(dist, DIRS.RIGHT + 10);
		_y = lengthdir_y(dist, DIRS.RIGHT + 10);
		
	}
	
	option_speed = 0.2;
	
} else if (mode == OPTION_MODE.CIRCLE) {
	var dist = 20;
	angle += 1.5;
	for (var i = 0; i < 4; i++) {
		_x = lengthdir_x(dist, angle);
		_y = lengthdir_y(dist, angle);
		
		option_speed = 0.2;
	}
} else if (mode == OPTION_MODE.SWORD) {
	var dist;
	if (option_id == 1) {
		dist = 10;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	} else if (option_id == 2) {
		dist = 20;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	} else if (option_id == 3) {
		dist = 30;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	} else if (option_id == 4) {
		dist = 40;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	}
	sword_timer += state_change_time;
	
	if (sword_timer >= 1) {
		if (dir == 45)
			dir = 135;
		else if (dir == 135)
			dir = 45;
		
		sword_timer = 0;
	}
}

#region Smooth option moode change
if (state == MODE_STATE.IDLE) {
	x = lerp(x, parent.x + _x, option_speed);
	y = lerp(y, parent.y + _y, option_speed);
} else if (state == MODE_STATE.CHANGE) {
	p0 = [x, y];
	p2 = [parent.x + _x, parent.y + _y];
	if (state_change_timer == 0) {
		p1 = [random_range(x, parent.x + _x), random_range(y, parent.y + _y)];
	}
	
	quadraticBezier(p0, p1, p2, state_change_timer);
	x = lerp(x, _x, option_speed);
	y = lerp(y, _y, option_speed);
	
	
	state_change_timer += state_change_time;

	if (state_change_timer >= 1) {
		state = MODE_STATE.IDLE;
		reset_t();
	}
}
#endregion

// Shoot bullets
if (shoot == true) {
	_angle = 0;
	_x_dist = 0;
	_y_dist = 0;
	create_bullets(_angle, _x_dist, _y_dist);
	shoot = false;
}