/// @description 
instance_destroy();

// Hit the monster
with (other) {
	if (other.y > dead_zone and hit == false) {
		hp--;
		iFrame = iFrameTime;
		flashTimer = 1;
		hit = true;
	}
}