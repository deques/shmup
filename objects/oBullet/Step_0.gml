/// @description 

if (parent == noone)
	parent = self;

//var xx = parent.x + lengthdir_x(parent.distance, angle);
//var yy = parent.y + lengthdir_y(parent.distance, angle);

var xx = parent.x + h_spd * dcos(angle);
var yy = parent.y + v_spd * dsin(angle);
x = xx;
y = yy;
