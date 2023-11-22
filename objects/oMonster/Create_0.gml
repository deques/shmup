/// @description Monster movement
image_speed = 0.1;
spd = 0;

dir = 0;
parent = self;
shot_cooldown = 0;
shoo_cooldown_counter = 0;
can_shoot = false;
hp = 1;

alarm[0] = 0;

if (instance_exists(oPlayer))
	player = oPlayer;

var padding = 10;
inside = {
	left		:	padding,
	right		:	room_width - padding,
	top			:	room_height - padding,
	bottom	:	padding
}