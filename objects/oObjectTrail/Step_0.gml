/// @description 

var _speed = 0.07;
image_xscale -= _speed;
image_yscale -= _speed;

image_alpha -= _speed;

y += 0.7;

if (image_xscale < 0)
	instance_destroy();
	
	