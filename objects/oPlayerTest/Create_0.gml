/// @description 
image_index = 1;
image_speed = 0;

spd = 4;
hsp = 0;
vsp = 0;
dir = 0;


arrOption = [
	[100, 0],
	[0, 100],
	[-100, 0],
	[0, -100],
]

for (var i = 0; i < array_length(arrOption); i++) {
	xOffset = arrOption[i][0];
	yOffset = arrOption[i][1];
	
	var option = instance_create_layer(x + xOffset , y + yOffset , global.layers.player, oOptionTest);
	option.parent = self;
	option.xOffset = xOffset;
	option.yOffset = yOffset;
	option.angle = point_direction(x, y, x + xOffset, y + yOffset);
}