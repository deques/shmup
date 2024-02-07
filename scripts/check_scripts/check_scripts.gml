
// Change neareast position (STANDARD MODE)
function check_nearest_standard(option_self) {
	var dist, _x, _y, _xx, _yy;
	if (position == 1) {
		dist = 10;
		_x = lengthdir_x(dist, DIRS.LEFT);
		_y = lengthdir_y(dist, DIRS.LEFT);
	}
	
	_xx = oPlayer.x + _x;
	_xx = oPlayer.y + _y;
	
	

}