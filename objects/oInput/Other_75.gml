/// @description 
var _gamepad = async_load[? "pad_index"];

switch (async_load[? "event_type"])
{
	case "gamepad discovered":
		array_push(global.gamepads, _gamepad);
		gamepad_set_axis_deadzone(_gamepad, 0.2);
	break;
	
	case "gamepad lost":
		var _index_array = array_get_index(global.gamepads, _gamepad);
		if (_index_array >= 0) {
			array_delete(global.gamepads, _index_array, 1)	
		}
	break;
}
	