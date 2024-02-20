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

function create_laser(_start, _end) {
	var _max = 900;
	var _angle = point_direction(_start.x, _start.y, _end[0], _end[1]);
	var _dist = point_distance(_start.x, _start.y, _end[0], _end[1]);
	
	draw_set_color(c_aqua);
	draw_line(_start.x, _start.y, _end[0], _end[1]);
	
}