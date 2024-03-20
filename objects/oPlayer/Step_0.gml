/// @description 
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _shoot = keyboard_check(ord("X"));
var _mode_change = keyboard_check_pressed(ord("C"));
var _weapon_level = keyboard_check_pressed(ord("0")) - keyboard_check_pressed(ord("9"))
var _move_h = _right - _left;
var _move_v = _down - _up;

if (_weapon_level != 0)
	weapon_level += _weapon_level;

function change_mode() {
	if (!instance_exists(oOption))
		return;
		
	//randomize();
	//ds_list_shuffle(global.options)
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

hsp = 0;
vsp = 0;

#region Player movement
if (_move_h != 0 or _move_v != 0) {
	dir = point_direction(0, 0, _move_h, _move_v);
	hsp = lengthdir_x(spd, dir);
	vsp = lengthdir_y(spd, dir);
	
	//hsp = spd * _move_h;
	if (_move_h > 0)
		image_index = 2;
	else if (_move_h < 0)
		image_index = 0;
} else {
		image_index = 1;
}

x = clamp(x + hsp, 0 + 10, room_width - 10);
y = clamp(y + vsp, 0 + 10, room_height - 10);
#endregion

#region Player actions

if (instance_exists(oOption)) {
	// Reset laser
	oOption.shoot_laser = false;

	if (_shoot and can_shoot = true) {
		_angle = DIRS.UP;
	
		// Timer
		if (option_mode = OPTION_MODE.STANDARD) {
			alarm[0] = 10;
			create_bullets(_angle, self.id);
			oOption.shoot = true;
			can_shoot = false
		} else if (option_mode = OPTION_MODE.LASER) {
			oOption.shoot_laser = true;
		
			with (global.options[| 0]) {
				if (laser_charge == false) {
					alarm[0] = laser_charge_time;	
					laser_charge = true;
				}
			}
		}
	} else if (_shoot == 0) {
		// Reset Options
		oOption.laser_charge = false;	
	}
}

if (_mode_change) {	
	change_mode();
}
#endregion

dir = point_direction(x, y, mouse_x, mouse_y);