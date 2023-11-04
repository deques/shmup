/// @description Monster movement logic

if (parent == noone)
	parent = self;

//var xx = parent.x + lengthdir_x(parent.distance, angle);
//var yy = parent.y + lengthdir_y(parent.distance, angle);
var xx = parent.x + spd * dcos(dir);
var yy = parent.y + spd * dsin(dir);
x = xx;
y = yy;
