/// @description 

randomize();

h_spd = 1.6;
move_dir = 1;
minMax = 60;
step = 0;

can_shoot = true;
can_shoot_timer = 10;
image_xscale = 2;
image_yscale = 2;

elements = 36;
arr_angles = array_create(elements, noone);
var dir;
distance = 50;

bullets = ds_list_create();

for (var i = 1; i <= elements; i++) {
	dir = i * 360 / elements;
	arr_angles[i - 1] = dir;
	
	var xx = lengthdir_x(0.5 * distance, dir);
	var yy = lengthdir_y(distance, dir);
	//dir = dir * (180 / pi);
	//with (instance_create_layer(x + distance * cos(dir), y + distance * sin(dir), "Player", oMonsterBullet)) {
		
	var object = instance_create_layer(x + xx, y + yy, "Player", oMonsterBullet2);
	with (object) {
		parent = other.id;
		angle = dir;
		image_blend = c_blue;
	}
	ds_list_add(bullets, object);
}