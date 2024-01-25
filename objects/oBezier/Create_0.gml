/// @description 
p0 = noone;
p1 = noone;
p2 = noone;

curve = [];

tNum = 100;
ready = false;

quadraticBezier = function(p0, p1, p2, t) {
	_x = power(1 - t, 2) * p0[0] + 2 * (1 - t) * t * p1[0] + power(t, 2) * p2[0];
	_y = power(1 - t, 2) * p0[1] + 2 * (1 - t) * t * p1[1] + power(t, 2) * p2[1];
	
	
	array_push(curve, [_x, _y]);
}

