/*enum DIRS {
	LEFT = 0,
	DOWN = 90,
	RIGHT = 180,
	UP = 270
}*/

enum DIRS {
	RIGHT = 0,
	UP = 90,
	LEFT = 180,
	DOWN = 270
}

enum OPTION_MODE {
	STANDARD,
	CIRCLE,
	SWORD,
	LASER,
	NUM
}

enum MODE_STATE {
		IDLE,
		CHANGE,
		NUM
}

global.mode_settings = {
	STANDARD : {
		name : "Standard",
		type : "range",
		damage : 10,
		cooldown : 10,
		attack : 1,
	},
	CIRCLE : {
		name : "Circle",
		type : "shield",
		damage : 10,
		cooldown : 10,
		attack : 0,
	},
	SWORD : {
		name : "Sword",
		type : "melee",
		damage : 15,
		cooldown : -1,
		attack : 1,
	},
	LASER : {
		name : "Laser",
		type : "melee",
		damage : 15,
		cooldown : -1,
		attack : 1,
	},
	NUM : {
		type : noone,
		damage : noone,
		cooldown : noone,
		attack : noone,
	}
}