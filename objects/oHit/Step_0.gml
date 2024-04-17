/// @description 
if (hp <= 0) {
	instance_destroy();
}

// Getting hit
if (hit == true) {
	iFrame -= global.timer;
	flashTimer -= flashTime;
	
	if (iFrame <= 0) {
		hit = false;	
	}
}