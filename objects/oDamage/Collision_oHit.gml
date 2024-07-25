/// @description Hit the object
with (other) {
	if (other.y > dead_zone and hit == false) {
		hp = hp - other.damage;
		iFrame = iFrameTime;
		flashTimer = 1;
		hit = true;
	}
}
instance_destroy();