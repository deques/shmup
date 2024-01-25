/// @description 

var draw_curve = function() {
	var color = make_color_rgb(245, 255, 236);
	draw_set_color(color);
	for (var i = 0; i < tNum - 1; i++) {
		var p1 = curve[i];
		var p2 = curve[i + 1];
		draw_line(p1[0], p1[1], p2[0], p2[1]);
	}
}

var color = make_color_rgb(245, 255, 236);
draw_set_color(color);


dPoint(p0);
dPoint(p1);
dPoint(p2);

if (ready == true) {
	draw_curve();
}