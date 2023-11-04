// Inherit the parent event
event_inherited();

if (can_shoot) {
	var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
	bullet.angle = point_direction(x, y, player.x, player.y);
	bullet.spd = 2;
	can_shoot = false;
}

// Only start shooting when visible
if (x > inside.left and x < inside.right and
		y > inside.bottom and y < inside.top and
		can_shoot == false and alarm[0] <= 0) {
	alarm[0] = shot_cooldown;
}

if (y > room_height) {
	y = -20;
	x = irandom_range(10, room_width);
}