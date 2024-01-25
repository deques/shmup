/// @description 

if (array_length(p0) == 0) {
	p0 = [mouse_x, mouse_y];	
}
else if (array_length(p1) == 0) {
	p1 = [mouse_x, mouse_y];	
}
else if (array_length(p2) == 0) {
	p2 = [mouse_x, mouse_y];	
}

if (array_length(p0) > 0 && array_length(p1) > 0 && array_length(p2) > 0) {
	
	for (var i = 0; i < tNum; i++) {
		quadraticBezier(p0, p1, p2, i / tNum);
	}
	ready = true;
	show_debug_message("klart")	
}