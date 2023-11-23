/// @description 



// Inherit the parent event
event_inherited();

shot_cooldown = 10;

if (instance_exists(oPlayer))
	shoot_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
else
	shoot_angle = 0;
	
minMax = 60;
min_shoot_angle = shoot_angle - minMax;
max_shoot_angle = shoot_angle + minMax;

step = 10;