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

function shoot_laser_beam(_angle) {
	var endPoint, _end_x, _end_y;
	var _shoot_laser = false;
	var _max_laser_length = 1000;
	var _laser_length = 0;
	
	
	if (option_id == 1) {
		test = false;	
	}
	
	//if (!instance_exists(oLaser)) {
	if (laser == noone) {
		laser = instance_create_layer(x, y, global.layers.player, oLaser);
		laser.parent = self;
		laser.image_yscale = _max_laser_length;
		laser.image_angle = _angle - 90;
		
		if (option_id == 1)
		laser.image_xscale = 2;
	}
	
	laser.x = x;
	laser.y = y;
	laser_collide = false;
	
	// Check laser collision
	for (var i = 0; i < _max_laser_length; i++) {
		var _xx = lengthdir_x(i, _angle);
		var _yy = lengthdir_y(i, _angle);
		if (collision_point(x + _xx, y + _yy, global.laser_collide, false, true)) {
			laser_collide = true;
			_laser_length = i;
			laser.image_yscale = _laser_length;
			break;
		}
	}
	
	if (laser_collide == false)
		laser.image_yscale = _max_laser_length;
		
	// Check if hitting any object
	//test = collision_line(x, y, x, y - _laser_length, global.laser_hit, false, true);
	/*with (collision_line(x, y, x, y - _laser_length, global.laser_hit, false, true)) {
		if (hit_cooldown == false) {
			alarm[0] = hit_cooldown_timer;
			hp--;
		}
		show_debug_message("HIT");	
	}*/
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