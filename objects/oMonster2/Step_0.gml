x += (h_spd * move_dir);
step += h_spd;

if (step >= minMax) {
	move_dir *= -1;
	step = 0;	
}

/*
for (var i = 0; i < elements; i++) {
	var object = bullets[| i];	
	with (object) {
		var xx = other.x + lengthdir_x(other.distance, other.arr_angles[i]);
		var yy = other.y + lengthdir_y(other.distance, other.arr_angles[i]);
		x = xx;
		y = yy;
	}
}*/