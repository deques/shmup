/// @description 
dir = point_direction(x, y, h_spd, v_Spd);
var xx = lengthdir_x(h_spd,dir);
var yy = lengthdir_y(v_Spd, dir);
image_angle = dir;
x += (xx * move_dir);
step += h_spd;

if (step >= minMax) {
	move_dir *= -1;
	step = 0;	
}

y += yy;