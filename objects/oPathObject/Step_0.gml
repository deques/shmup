/// @description 
if (follow == true) {
	var p1 = oPathTest.dsPoints[| pointPos];
	var p2 = oPathTest.dsPoints[| pointPos + 1];
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
		var num = ds_list_size(oPathTest.dsPoints);
		if (pointPos + 1 >= num) {
			follow = false;	
		}
		change = false;
		lastDistance = 100000;
	}	else {
		lastDistance = point_distance(xPos / scale, yPos / scale, x2, y2);
	}
	
	x = xPos;
	y = yPos;
	
}