/// @description 

if (array_length(p0) > 0 && array_length(p1) > 0 && array_length(p2) > 0) {
	
	curve = [];
	for (var i = 0; i < tNum + 1; i++) {
		quadraticBezier(p0, p1, p2, i / tNum);
	}
	ready = true;
}

global.step += 0.01;