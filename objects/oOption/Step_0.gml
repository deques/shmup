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
	x = lerp(x, parent.x + _x, option_speed)
	y = lerp(y, parent.y + _y, option_speed)
	//x = parent.x + _x;
	//y = parent.y + _y;
} else if (mode == OPTION_MODE.CIRCLE) {
	var dist = 20;
	angle += 1.5;
	for (var i = 0; i < 4; i++) {
		_x = lengthdir_x(dist, angle);
		_y = lengthdir_y(dist, angle);
		
		option_speed = 0.2;
		x = lerp(x, parent.x + _x, option_speed)
		y = lerp(y, parent.y + _y, option_speed)
		
		
		//var xx = parent.x + lengthdir_x(parent.distance, angle);
		//var yy = parent.y + lengthdir_y(parent.distance, angle);*/
	}
}

// Shoot bullets
if (shoot == true) {
	_angle = 0;
	_x_dist = 0;
	_y_dist = 0;
	create_bullets(_angle, _x_dist, _y_dist);
	shoot = false;
}