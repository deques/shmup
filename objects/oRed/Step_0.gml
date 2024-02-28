// Inherit the parent event
event_inherited();

// Shoot
if (can_shoot) {
	var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
	bullet.angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	bullet.spd = 8;
	can_shoot = false;
	bullet.shot_from = self.id;
}



if (y > room_height) {
	y = -20;
	x = irandom_range(10, room_width);
}