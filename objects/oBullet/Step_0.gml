/// @description 

if (parent == noone)
	parent = self;

var xx = parent.x + lengthdir_x(spd, angle);
var yy = parent.y + lengthdir_y(spd, angle);

//var xx = parent.x + spd * dcos(angle);
//var yy = parent.y + spd * dsin(angle);
x = xx;
y = yy;
