/// @description Monster movement logic

if (parent == noone)
	parent = self;

//var xx = parent.x + lengthdir_x(parent.distance, angle);
//var yy = parent.y + lengthdir_y(parent.distance, angle);
var xx = parent.x + spd * dcos(dir);
var yy = parent.y + spd * dsin(dir);
x = xx;
y = yy;


// Die if the HP is or lower than 0
if (hp <= 0) {
	instance_destroy();
}

// Only start shooting when visible
if (x > inside.left and x < inside.right and
		y > inside.top and y < inside.bottom and
		can_shoot == false and alarm[0] <= 0) {
	alarm[0] = shot_cooldown;
}