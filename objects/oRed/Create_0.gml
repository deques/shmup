/// @description Red movement

// Inherit the parent event
event_inherited();

spd = 4;
dir = DIRS.DOWN;
shot_cooldown = 10;
hp = 10;

if (global.DEBUG) {
	hp = 1;
}