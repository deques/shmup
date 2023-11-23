/// @description 



// Inherit the parent event
event_inherited();

// Shoot
if (can_shoot) {
	
	// Create four bullets at each direction
	with (instance_create_layer(x, y, global.layers.bullets, oBullet)) {
		angle = other.shoot_angle;
		spd = 1.5;
		image_blend = c_dkgray;
	}
	
	can_shoot = false;
	shoot_angle += step;
	
	if (shoot_angle >= max_shoot_angle or shoot_angle <= min_shoot_angle)
		step *= -1;
}