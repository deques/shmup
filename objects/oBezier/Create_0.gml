/// @description 
p0 = noone;
p1 = noone;
p2 = noone;

curve = [];

tNum = 100;
ready = false;

quadraticBezier = function(p0, p1, p2, t) {
	_x = (1 - t)^2 * p0[0] + 2 * (1 - t) * t * p1[0] + t * t * p2[0];
	_y = (1 - t)^2 * p0[1] + 2 * (1 - t) * t * p1[1] + t * t * p2[1];
	
	
	array_push(curve, [_x, _y]);
}


dPoint = function(p) {
	if (p != noone) {
		draw_point(p[0], p[1]);
	}	
}