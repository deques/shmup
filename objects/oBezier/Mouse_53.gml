/// @description 

if (array_length(p0) == 0) {
	p0 = [mouse_x, mouse_y];
	var point = instance_create_layer(mouse_x, mouse_y, "Instances", oPoint);
	point.p = "P0";
}
else if (array_length(p1) == 0) {
	p1 = [mouse_x, mouse_y];
	var point = instance_create_layer(mouse_x, mouse_y, "Instances", oPoint);
	point.p = "P1";
}
else if (array_length(p2) == 0) {
	p2 = [mouse_x, mouse_y];
	var point = instance_create_layer(mouse_x, mouse_y, "Instances", oPoint);
	point.p = "P2";
}
