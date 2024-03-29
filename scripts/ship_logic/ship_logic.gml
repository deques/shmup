// Shoot bullets
function create_bullets(_angle, _parent, _x_dist = 0, _y_dist = 0) {
	with (instance_create_layer(x - _x_dist, y + _y_dist, "Player", oBeam))	{
		dir = _angle;
		
		if (object_get_name(_parent.object_index) == "oOption") {
			if (other.mode == OPTION_MODE.LASER) {
				if(other.option_id == 3 or other.option_id == 4) {
					var _mirror_angle = 90 + (90 - _angle);
					_angle = _mirror_angle;
				}
				mode = "laser";
			}
		}
		image_angle += _angle - 90;
	}
}

function shoot_laser_beam() {
	var endPoint, _end_x, _end_y;
	var _shoot_laser = false;
	var laser_length = 1000;
	
	if (!instance_exists(oLaser)) {
		laser = instance_create_layer(x, y, global.layers.player, oLaser);
		laser.parent = self;
		laser.image_yscale = laser_length ;
	}
	
	laser.x = x;
	laser.y = y;
	laser_collide = false;
	// Check laser collision
	for (var i = 0; i < laser_length; i++) {
		if (collision_point(x, y - i, global.laser_collide, false, true)) {
			laser_collide = true;
			laser.image_yscale = i;
			break;
		}
	}
	
	if (laser_collide == false)
		laser.image_yscale = laser_length;
	
	
	/*if (option_id == 1) {
		// First Option charges the laser beam
		if (alarm[0] < 0)
			_shoot_laser = true;		// Shoot the laser beam
			
		_end_x = x;
		_end_y = y - 2000;
			
		// Shoot on enemies
		if (collision_point(_end_x, _end_y, oMonster, false, true)) {
			_end_x = other.x;
			_end_y = other.y;
		}
		
	} else if (option_id == 2 or option_id == 3 or option_id == 4) {
		// Option 2, 3 and 4 beams at the first option
		_shoot_laser = true;
		endPoint = global.options[| 0].id;
		_end_x = endPoint.x;
		_end_y = endPoint.y;
	}
	_shoot_laser = true;
	if (_shoot_laser == true)
		create_laser(option_id, self, [_end_x, _end_y]);
	*/
	
}

function create_laser(_option_id, _start, _end) {
	var _max = 2000;
	var _angle = point_direction(_start.x, _start.y, _end[0], _end[1]);
	var _dist = point_distance(_start.x, _start.y, _end[0], _end[1]);
	
	laser = instance_create_layer(x, y, global.layers.player, oLaser);
	
	
	if (_option_id == 1) {
		draw_set_color(c_aqua);
		hit = collision_line(x, y, _end[0], _end[1], oMonster, false, true);
		if (hit) {
			_end[0] = hit.x;
			_end[1] = hit.y;
		}
	}
	
	laser_length = point_distance(_start.x, _start.y, _end[0], _end[1]);
	angle = point_direction(_start.x, _start.y, _end[0], _end[1]);
	if (_option_id == 1) {
		angle = 90;
	}
}

// Change option mode
function change_mode() {
	if (!instance_exists(oOption))
		return;
		
	//randomize();
	//ds_list_shuffle(global.options)
	oOption.shoot_laser = false;
	for (var i = 0; i < ds_list_size(global.options); i++) {
		option = global.options[| i];
		option.option_id = (i + 1);
	}
	
	oOption.mode++;
	if (oOption.mode == OPTION_MODE.NUM)
		oOption.mode = 0;
	
	oOption.state = MODE_STATE.CHANGE;
	option_mode = oOption.mode;
}