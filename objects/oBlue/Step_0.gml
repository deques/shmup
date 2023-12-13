/// @description 

// Inherit the parent event
event_inherited();

// Shoot
if (can_shoot) {
	var num = 8;
	var angle = 360 / num;
	
	for (var i = 0; i < num; i++)	{
		
		var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
		bullet.angle = angle * i + 10;
		bullet.spd = 2;
		
		var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
		bullet.angle = angle * i + 20;
		bullet.spd = 2;
		
		var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
		bullet.angle = angle * i + 30;
		bullet.spd = 2;
	}
	can_shoot = false;
}