/// @description 
key = mouse_check_button_pressed(mb_left);

if (key == 1) {
	var point = [mouse_x, mouse_y];
	ds_list_add(dsPoints, point);
}

hKey = keyboard_check_pressed(ord("H"))
if (hKey == 1) {
	pointPos = 0;
	var num = ds_list_size(dsPoints);
	
	if (num == 1)
		return;
	
	follow = true;
	vector = "forward";
	
	var point = dsPoints[| 0];
	xPos = point[0] * scale;
	yPos = point[1] * scale;
}