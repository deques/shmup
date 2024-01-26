/// @description 

if (instance_exists(oBezier)) {
	with (oBezier) {
		if (ready == false)
			return;
	}
}

if (mouse_check_button_pressed(mb_left)) {
	grabbed = true;
}