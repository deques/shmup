/// @description 

if (global.DEBUG == true) {
	draw_self();
	//draw_text(x - sprite_width / 2, y, option_id);
}


if (shoot_laser == true and state == MODE_STATE.IDLE) {
	var endPoint, _end_x, _end_y;
	var _shoot_laser = false;
	
	if (option_id == 1) {
				
		if (alarm[0] < 0)
			_shoot_laser = true;
			
		_end_x = x;
		_end_y = y - 900;
		if (collision_point(_end_x, _end_y, oMonster, false, true)) {
			_end_x = other.x;
			_end_y = other.y;
		}
		
	} else if (option_id == 2 or option_id == 3 or option_id == 4) {
		_shoot_laser = true;
		endPoint = global.options[| 0].id;
		_end_x = endPoint.x;
		_end_y = endPoint.y;
	}
	
	if (option_id == 1 and _shoot_laser == true)
		option_id = 1;
		
	if (_shoot_laser == true)
		create_laser(option_id, self, [_end_x, _end_y]);
}