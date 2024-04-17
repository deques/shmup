/// @description 

dead_zone = global.dead_zone;														// Enemies can't be hurt

// Getting hit
hit = false;
iFrameTime = 0.2;
iFrame = 0;
// Hit flash
flashColor = c_white;
flashTimer = 0;
flashTime = 1 / (iFrameTime / global.timer);