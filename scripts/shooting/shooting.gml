// Shoot bullets
function create_bullets(_angle, _x_dist = 0, _y_dist = 0) {
	with (instance_create_layer(x - _x_dist, y + _y_dist, "Player", oBeam))	{
		dir = _angle;
		image__angle += _angle;
	}
}