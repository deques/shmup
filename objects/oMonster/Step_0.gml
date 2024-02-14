/// @description 

if (parent == noone)
	parent = self;

#region Movement
var xx = parent.x + lengthdir_x(spd, dir);
var yy = parent.y + lengthdir_y(spd, dir);
//var xx = parent.x + spd * dcos(dir);
//var yy = parent.y + spd * dsin(dir);
x = xx;
y = yy;
#endregion

#region Death
// Die if the HP is or lower than 0
if (hp <= 0) {
	can_shoot = false;
	shot_cooldown = 0;
	
	instance_destroy();
	with (oBullet) {
		if (shot_from == other.id) {
			instance_create_layer(x, y, "Bullets", oCoin);
			instance_destroy();	
		}
	}
}

// Getting hit
if (hit == true) {
	iFrame -= global.timer;
	flashTimer -= flashTime;
	
	if (iFrame <= 0) {
		hit = false;	
	}
}
#endregion

// Only start shooting when visible
if (x > inside.left and x < inside.right and
		y > inside.top and y < inside.bottom and
		can_shoot == false and alarm[0] <= 0) {
	alarm[0] = shot_cooldown;
}