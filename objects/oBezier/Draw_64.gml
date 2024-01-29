/// @description 

var draw_curve = function() {
	var color = make_color_rgb(245, 255, 236);
	draw_set_color(color);
	for (var i = 0; i < tNum - 1; i++) {
		var p1 = curve[i];
		var p2 = curve[i + 1];
		draw_line(p1[0], p1[1], p2[0], p2[1]);
	}
	
	draw_line(aDot.x, aDot.y, bDot.x, bDot.y);
	_x = lerp(aDot.x, bDot.x, global.step);
	_y = lerp(aDot.y, bDot.y, global.step);
	draw_sprite(sCircleMove, 0, _x, _y);
}


if (ready == true) {
	draw_curve();
}