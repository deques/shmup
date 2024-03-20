/// @description 
/// @description 

if (instance_exists(parent)) {
	
	angle-= 7;
	option_speed = 1;
	_x = lengthdir_x(dist, angle);
	_y = lengthdir_y(dist, angle);
	
	//x = parent.x + _x;
	//y = parent.y + _y;
	x = lerp(x, parent.x + _x, option_speed);
	y = lerp(y, parent.y + _y, option_speed);
}