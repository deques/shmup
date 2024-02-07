enum DIRS {
	LEFT = 0,
	DOWN = 90,
	RIGHT = 180,
	UP = 270
}


global.layers = {
	player :	"Player",
	enemy :		"Enemy",
	bullets :	"Bullets"
}

enum OPTION_MODE {
	STANDARD,
	CIRCLE,
	NUM
}

enum MODE_STATE {
		IDLE,
		CHANGE,
		NUM
}