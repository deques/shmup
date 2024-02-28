/// @description 

// Inherit the parent event
event_inherited();

// Shoot
if (can_shoot) {
	var num = 8;
	var angle = 360 / num;
	
	for (var i = 0; i < num; i++)	{
		
		/*for (j = -1; j < 1; j++) {
			var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
			with (bullet) {
				angle = other.angle * i + 20 + (10 * j);
				spd = 2;
				shot_from = other.id;
			}
		}*/
		var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
		bullet.angle = angle * i + 10;
		bullet.spd = 8;
		bullet.shot_from = self.id;
			
		var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
		bullet.angle = angle * i + 20;
		bullet.spd = 8;
		bullet.shot_from = self.id
		
		var bullet = instance_create_layer(x, y, global.layers.bullets, oBullet);
		bullet.angle = angle * i + 30;
		bullet.spd = 8;
		bullet.shot_from = self.id;
	}
	can_shoot = false;
}