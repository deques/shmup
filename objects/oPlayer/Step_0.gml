/// @description 
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _shoot = keyboard_check(ord("X"));
var _weapon_level = keyboard_check_pressed(ord("0")) - keyboard_check_pressed(ord("9"))
var _move_h = _right - _left;
var _move_v = _down - _up;

if (_weapon_level != 0)
	weapon_level += _weapon_level;

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
if (_shoot and can_shoot = true) {
	player_shoot();
	
	can_shoot = false;
	alarm[0] = 10;
}
#endregion

dir = point_direction(x, y, mouse_x, mouse_y);