/// @description 
y += vSpd;

angle += 1.5;
//var xx = parent.x + lengthdir_x(parent.distance, angle);
//var yy = parent.y + lengthdir_y(parent.distance, angle);
var xx = parent.x + xSize * dcos(angle);
xSize = xSize + xincDec;
if (xSize >= maxxSize or (xSize <= (maxxSize * -1)))
	xincDec *= -1;

var yy = parent.y + ySize * dsin(angle);
ySize = ySize + yincDec;
if (ySize >= maxySize or (ySize <= (maxySize * -1)))
	yincDec *= -1;
x = xx;
y = yy;
