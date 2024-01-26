/// @description 
grabbed = false;

if (instance_exists(oBezier)) {
	if (oBezier.ready == true) {
		if (p == "P0") {
			oBezier.p0 = [mouse_x, mouse_y];
		}
		else if (p == "P1") {
			oBezier.p1 = [mouse_x, mouse_y];
		}
		else if (p == "P2") {
			oBezier.p2 = [mouse_x, mouse_y];
		}
	}
}