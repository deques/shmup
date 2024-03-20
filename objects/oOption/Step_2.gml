/// @description 

if (parent == noone)
	return;

// Test debuging
var _id = global.options[| option_id - 1].id;


#region Option movement
if (mode == OPTION_MODE.STANDARD) {
	image_angle = 0;
	image_index = 0;
	if (option_id == 1) {
		var dist = 40;
		_x = lengthdir_x(dist, DIRS.LEFT);
		_y = lengthdir_y(dist, DIRS.LEFT);
		
	}	else if (option_id == 2) {
		var dist = 40;
		_x = lengthdir_x(dist, DIRS.RIGHT);
		_y = lengthdir_y(dist, DIRS.RIGHT);
		
	} else if (option_id == 3) {
		var dist = 80;
		_x = lengthdir_x(dist, DIRS.RIGHT - 10);
		_y = lengthdir_y(dist, DIRS.RIGHT - 10);
		
	} else if (option_id == 4) {
		var dist = 80;
		_x = lengthdir_x(dist, DIRS.LEFT + 10);
		_y = lengthdir_y(dist, DIRS.LEFT + 10);
		
	}
	
	option_speed = 0.9;
	
} else if (mode == OPTION_MODE.CIRCLE) {
	image_index = 1;
	shoot = false;
	var dist = 80;
	angle += 7;
	
		_x = lengthdir_x(dist, angle);
		_y = lengthdir_y(dist, angle);
		
		
		option_speed = 1.8;
} else if (mode == OPTION_MODE.SWORD) {
	image_index = 1;
	shoot = false;
	var dist;
	if (option_id == 1) {
		dist = 40;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	} else if (option_id == 2) {
		dist = 80;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	} else if (option_id == 3) {
		dist = 120;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	} else if (option_id == 4) {
		dist = 160;
		_x = lengthdir_x(dist, dir);
		_y = lengthdir_y(dist, dir);
	}
	sword_timer += state_change_time;
		option_speed = 0.2;
	
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
	var option1 = global.options[| 0].id;
	if (option_id == 1) {
		dist = 140;
		_x = lengthdir_x(dist, 90)
		_y = lengthdir_y(dist, 90)
	} else if (option_id == 2) {
		dist = 60;
		_x = lengthdir_x(dist, 90)
		_y = lengthdir_y(dist, 90)
	} else if (option_id == 3) {
		dist = 80;
		_x = lengthdir_x(dist, 70)
		_y = lengthdir_y(dist, 70)
		
		image_angle = point_direction(x, y, option1.x, option1.y) - 90;
	} else if (option_id == 4) {
		dist = 80;
		_x = lengthdir_x(dist, 110)
		_y = lengthdir_y(dist, 110)
		image_angle = point_direction(x, y, option1.x, option1.y) - 90;
	}
}

#endregion

#region Smooth option mode change
if (state == MODE_STATE.IDLE) {
	x = lerp(x, parent.x + _x, option_speed);
	y = lerp(y, parent.y + _y, option_speed);
} else if (state == MODE_STATE.CHANGE) {
	
	if (mode == OPTION_MODE.CIRCLE) {
		angle = option_id * 90;
	}
	
	p0 = [x, y];
	p2 = [parent.x + _x, parent.y + _y];
	if (state_change_timer == 0) {
		p1 = [random_range(x, parent.x + _x), random_range(y, parent.y + _y)];
	}
	
	quadratic_Bezier(p0, p1, p2, state_change_timer);
	x = lerp(x, _x, option_speed);
	y = lerp(y, _y, option_speed);
	
	state_change_timer += state_change_time;

	if (state_change_timer >= 1) {
		state = MODE_STATE.IDLE;
		reset_t();
	}
}
#endregion

#region Shoot bullets
if (shoot == true and state == MODE_STATE.IDLE) {
	var _angle = DIRS.UP;
	if (mode == OPTION_MODE.LASER and (option_id == 3 or option_id == 4)) {
		_angle = point_direction(x, y, option1.x, option1.y);
		var _mirror_angle = 90 + (90 - _angle);
		_angle = _mirror_angle;
	}
	create_bullets(_angle, self.id);
	shoot = false;
}
#endregion

#region Create trail
if (mode != OPTION_MODE.LASER) {
	trail = instance_create_layer(x, y, global.layers.player, oObjectTrail)
	trail.image_index = image_index;
}
#endregion