/// @description Insert description here
// You can write your code in this editor
speed = normSpeed*global.speedConst; 
if (tilemap_get_at_pixel(objPlayer.wallId, x, y)) {
	instance_destroy();
}