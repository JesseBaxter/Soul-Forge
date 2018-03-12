/// @description Insert description here
// You can write your code in this editor
image_angle = callerId.image_angle;
if (place_meeting(x, y, objPlayer)) {
	callerId.playerClose = true;
} else {
	callerId.playerClose = false;
}