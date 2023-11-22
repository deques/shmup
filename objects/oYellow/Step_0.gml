/// @description 



// Inherit the parent event
event_inherited();

// Shoot
if (can_shoot) {
	// Create four bullets at each direction
	for (var i = 0; i < 4; i++) {
		with (instance_create_layer(x, y, global.layers.bullets, oBullet)) {
			angle = other.shoot_angle + (i * 90);
			spd = 2;
			image_blend = c_yellow;
		}
	}
	
	can_shoot = false;
	shoot_angle += 10;
	
	if (shoot_angle >= 360)
		shoot_angle = 0;
}