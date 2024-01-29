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

if (array_length(p0) > 0 && array_length(p1) > 0 && aDot == noone) {
	aDot = instance_create_layer(p0[0] + 10, p0[1], "Instances", oMovePoint);
	aDot.aPoint = p0;
	aDot.bPoint = p1;
}

if (array_length(p1) > 0 && array_length(p2) > 0 && bDot == noone) {
	bDot = instance_create_layer(p1[0], p1[1], "Instances", oMovePoint);
	bDot.aPoint = p1;
	bDot.bPoint = p2;
}