/// @description 
with (other) {
	instance_destroy();	
}

num = ds_list_size(global.options)

var option = instance_create_layer(x, y, global.layers.player, oOption);
option.parent = self;
option.option_id = (num + 1);
option.mode = option_mode;

if (oOption.mode = OPTION_MODE.CIRCLE)
	oOption.state = MODE_STATE.CHANGE;

ds_list_add(global.options, option);