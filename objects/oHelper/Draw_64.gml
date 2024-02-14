/// @description 
if (global.DEBUG) {
	// Get the viewports width and height
	var width = view_wport[0];
	var height = view_hport[0];
	var scale = width / room_width;

	// Draw helper dead zone area
	var color = make_color_rgb(245, 255, 236);
	draw_set_color(color);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, width, global.dead_zone * scale, 0);
	draw_set_alpha(1);
	
	var bullets;
	
	// Count enemy bullets
	bullets = instance_number(oBullet);
	draw_text(10, 100, "Bullet count: " + string(bullets));
	
	// Count player bullets
	bullets = instance_number(oBeam);
	draw_text(10, 120, "Bullet count: " + string(bullets));
	
	// Option mode
	if (oPlayer.option_mode == OPTION_MODE.STANDARD) {
		mode = "Standard";
	} else if (oPlayer.option_mode == OPTION_MODE.CIRCLE) {
		mode = "Circle";
	} else if (oPlayer.option_mode == OPTION_MODE.SWORD) {
		mode = "Sword";
	} else if (oPlayer.option_mode == OPTION_MODE.LASER) {
		mode = "Laser";
	}
	
	draw_text(10, 140, "Option mode: " + mode);
}