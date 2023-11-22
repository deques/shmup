// Inherit the parent event
event_inherited();

// Shoot
if (can_shoot) {
	var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
	bullet.angle = point_direction(x, y, player.x, player.y);
	bullet.spd = 2;
	can_shoot = false;
}



if (y > room_height) {
	y = -20;
	x = irandom_range(10, room_width);
}