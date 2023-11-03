// Shoot bullets
function create_bullets(_angle, _x_dist, _y_dist) {
	with (instance_create_layer(x - _x_dist, y + _y_dist, "Player", oBeam))	{
		dir = DIRS.UP + _angle;
		image__angle += _angle;
	}
	
	with (instance_create_layer(x + _x_dist, y + _y_dist, "Player", oBeam))	{
		dir = DIRS.UP - _angle;
		image__angle -= _angle;
	}
}

// Bullet level
function player_shoot() {
	var _angle = 0;
	var _x_dist, _y_dist;
	
	// Level 1
	_angle = 0;
	_x_dist = 4.5;
	_y_dist = 0;
	create_bullets(_angle, _x_dist, _y_dist);
	
	// Level 2
	if (weapon_level >= 2) {
		_x_dist = 8;
		_y_dist = 4;
		create_bullets(_angle, _x_dist, _y_dist);
	}
	
	// Level 3
	if (weapon_level >= 3) {
		_x_dist = 12;
		_y_dist = 8;
		create_bullets(_angle, _x_dist, _y_dist);
	}
	
	// Level 4
	if (weapon_level >= 4) {
		_angle = 5;
		_x_dist = 16;
		_y_dist =10;
		create_bullets(_angle, _x_dist, _y_dist);
	}
}