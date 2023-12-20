/// @description 

var width = view_wport[0];
var height = view_hport[0];
scale = width / room_width;

dsPoints = ds_list_create();
follow = false;

pointPos = 0;
spd = 2;
vector = noone;

xPos = -1;
yPos = -1;

lastDistance = 100000;