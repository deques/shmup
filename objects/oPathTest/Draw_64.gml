/// @description 

var drawPoints = function(scale) {
	var num = ds_list_size(dsPoints);
	for (var i = 0; i < num; i++) {
		var point = dsPoints[| i];
		xx = point[0] * scale;
		yy = point[1] * scale;
	
		draw_circle(xx, yy, 5, false);
	}
}


if (follow == true) {
	var p1 = dsPoints[| pointPos];
	var p2 = dsPoints[| pointPos + 1];
	var x1 = p1[0],	x2 = p2[0], y1 = p1[1], y2 = p2[1];
	var change = false;
	
	var dir = point_direction(x1, y1, x2, y2);
	
	var xx = lengthdir_x(spd, dir) * scale;
	var yy = lengthdir_y(spd, dir) * scale;
	
	xPos += xx;
	yPos += yy;
	var dist = point_distance(xPos / scale, yPos / scale, x2, y2);
	
	if (dist > lastDistance)
		change = true;
		
	if (dist <= 2 or change == true) {
		pointPos++;
		var num = ds_list_size(dsPoints);
		if (pointPos + 1 >= num) {
			follow = false;	
		}
		change = false;
		lastDistance = 100000;
	}	else {
		lastDistance = point_distance(xPos / scale, yPos / scale, x2, y2);
	}
	
	draw_circle(xPos, yPos, 5, false);
}



drawPoints(scale);