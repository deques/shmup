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
}