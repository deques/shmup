/// @description 

if (parent == noone)
	return;

// Test debuging
var _id = global.options[| option_id - 1].id;


#region Option movement
if (mode == OPTION_MODE.STANDARD) {
	image_index = 0;
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
		_x = lengthdir_x(dist, DIRS.RIGHT - 10);
		_y = lengthdir_y(dist, DIRS.RIGHT - 10);
		
	} else if (option_id == 4) {
		var dist = 20;
		_x = lengthdir_x(dist, DIRS.LEFT + 10);
		_y = lengthdir_y(dist, DIRS.LEFT + 10);
		
	}
	
	option_speed = 0.2;
	
} else if (mode == OPTION_MODE.CIRCLE) {
	image_index = 1;
	var dist = 20;
	angle += 7;
	for (var i = 0; i < 4; i++) {
		_x = lengthdir_x(dist, angle);
		_y = lengthdir_y(dist, angle);
		
		option_speed = 0.2;
	}
} else if (mode == OPTION_MODE.SWORD) {
	image_index = 1;
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
} else if (mode == OPTION_MODE.LASER) {
	image_index = 0;
	var dist;
	if (option_id == 1) {
		dist = 35;
		_x = lengthdir_x(dist, 90)
		_y = lengthdir_y(dist, 90)
	} else if (option_id == 2) {
		dist = 15;
		_x = lengthdir_x(dist, 90)
		_y = lengthdir_y(dist, 90)
	} else if (option_id == 3) {
		dist = 20;
		_x = lengthdir_x(dist, 70)
		_y = lengthdir_y(dist, 70)
	}else if (option_id == 4) {
		dist = 20;
		_x = lengthdir_x(dist, 110)
		_y = lengthdir_y(dist, 110)
	}
}

#endregion

#region Smooth option mode change
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
	_angle = DIRS.UP;
	create_bullets(_angle);
	shoot = false;
}

#region Create trail
trail = instance_create_layer(x, y, global.layers.player, oObjectTrail)
trail.image_index = image_index;

#endregion