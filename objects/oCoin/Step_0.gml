/// @description 

if (instance_exists(oPlayer)) {
	var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	
	distance = distance_to_point(oPlayer.x, oPlayer.y);
	
	//var xx = x + lengthdir_x(spd, dir);
	//var yy = y + lengthdir_y(spd, dir);
	
	xx = lerp(x, x + lengthdir_x(spd, dir), 1);
	yy = lerp(y, y + lengthdir_y(spd, dir), 1);
	x = xx;
	y = yy;
}