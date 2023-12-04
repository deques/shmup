/// @description Monster movement
image_speed = 0.1;
spd = 0;

dir = 0;
parent = self;
shot_cooldown = 0;
shoo_cooldown_counter = 0;
can_shoot = false;
hp = 1;
move_speed = 0;

dead_zone = global.dead_zone;														// Enemies can't be hurt
cease_fire_zone = room_height - global.cease_fire_zone; // Enemies stop shooting 

alarm[0] = 0;

if (instance_exists(oPlayer))
	player = oPlayer;

var padding = 10;
inside = {
	left		:	padding,
	right		:	room_width - padding,
	bottom	:	cease_fire_zone,
	top			:	padding
}