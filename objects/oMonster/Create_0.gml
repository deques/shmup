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
medal = false;

dead_zone = global.dead_zone;														// Enemies can't be hurt
cease_fire_zone = room_height - global.cease_fire_zone; // Enemies stop shooting 

// Getting hit
hit = false;
iFrameTime = 0.2;
iFrame = 0;
// Hit flash
flashColor = c_white;
flashTimer = 0;
flashTime = 1 / (iFrameTime / global.timer);

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