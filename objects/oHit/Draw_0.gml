/// @description 

draw_self();

// Flash
if (flashTimer > 0) {
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashTimer);
	
	shader_reset();
}

draw_text(x + 10, y + 10, string(hp));