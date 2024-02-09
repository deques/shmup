/// @description 
image_index = 1;
image_speed = 0;

spd = 1;
hsp = 0;
vsp = 0;
dir = 0;

can_shoot = true;

weapon_level = 1;

// Create options
num_options = 4;

option_mode = noone;
global.options = ds_list_create();

for (var i = 0; i < num_options; i++) {
	var option = instance_create_layer(x, y, global.layers.player, oOption);
	option.parent = self;
	option.option_id = (i + 1);
	option.mode = OPTION_MODE.CIRCLE;
	option_mode = option.mode;
	if (option.mode == OPTION_MODE.CIRCLE) {
		option.angle = (i * 90);	
	}
	
	ds_list_add(global.options, option);
}