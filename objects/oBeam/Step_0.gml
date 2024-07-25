/// @description 

#region bullet movement
var _x = lengthdir_x(spd, dir);
var _y = lengthdir_y(spd, dir);

if (place_meeting(x, y - _y, global.bullet_hit)) {
	while (!place_meeting(x, y - sign(_y), global.bullet_hit)) {
		y--;	
	}
	//instance_destroy();
	instance_create_layer(x, y - _y, layer_name, oBulletExplosionBlue);
}

x += _x;
y -= _y;
#endregion

