/// @description Monster movement logic

if (parent == noone)
	parent = self;

#region Movement
//var xx = parent.x + lengthdir_x(parent.distance, angle);
//var yy = parent.y + lengthdir_y(parent.distance, angle);
var xx = parent.x + spd * dcos(dir);
var yy = parent.y + spd * dsin(dir);
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
	/*for (var i = 0; i < instance_number(oBullet); i++) {
		var inst_bullet = instance_find(oBullet, i);
		
		with (inst_bullet) {
			if (shot_from == other.id) {
				image_blend = c_red;
				//instance_destroy(inst_bullet.id);
			}
		}
	}*/
}

// Getting hit
if (hit == true) {
	iFrame -= global.timer;
	
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