// Shoot bullets
function create_bullets(_angle, _parent, _x_dist = 0, _y_dist = 0) {
	with (instance_create_layer(x - _x_dist, y + _y_dist, "Player", oBeam))	{
		dir = _angle;
		
		if (object_get_name(_parent.object_index) == "oOption") {
			if (other.mode == OPTION_MODE.LASER) {
				if(other.option_id == 3 or other.option_id == 4) {
					var _mirror_angle = 90 + (90 - _angle);
					_angle = _mirror_angle;
				}
				mode = "laser";
			}
		}
		image_angle += _angle - 90;
	}
}