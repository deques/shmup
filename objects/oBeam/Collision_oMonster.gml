/// @description 
instance_destroy();
with (other) {
	if (other.y > dead_zone and hit == false) {
		hp--;
		iFrame = iFrameTime;
		hit = true;
	}
}