global.DEBUG = true;
global.NOSHOT = true;

global.dead_zone = 200;											// Enemies can't be hurt
global.cease_fire_zone = room_height - 50;	// Enemies stop shooting 

global.timer = 1 / room_speed;

global.scale = 4;

global.layers = {
	player	:	"Player",
	enemy		:	"Enemy",
	bullets :	"Bullets",
	stage		:	"Stage"
}

global.laser_collide = [
	oWall,
	oOption,
]


global.laser_hit = [
	oMonster,
	oAsteroid
]

global.bullet_hit = [
	oHit,
	oWall
]