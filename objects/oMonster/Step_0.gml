/// @description Monster movement logic

if (parent == noone)
	parent = self;

//var xx = parent.x + lengthdir_x(parent.distance, angle);
//var yy = parent.y + lengthdir_y(parent.distance, angle);
var xx = parent.x + h_spd * dcos(dir);
var yy = parent.y + v_spd * dsin(dir);
show_debug_message(xx)
x = xx;
y = yy;
