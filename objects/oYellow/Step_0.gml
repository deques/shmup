// Inherit the parent event
event_inherited();

// Shoot
if (can_shoot) {
	var num = 4;
	var num_angle = 360 / num;
	
	// Create four bullets at each direction
	for (var i = 0; i < num; i++) {
		with (instance_create_layer(x, y, global.layers.bullets, oBullet)) {
			angle = other.shoot_angle + (i * num_angle);
			spd = 8;
			image_blend = c_yellow;
			shot_from = self.id;
		}
	}
	
	can_shoot = false;
	shoot_angle += 10;
	
	if (shoot_angle >= 360)
		shoot_angle = 0;
}

y += move_speed;