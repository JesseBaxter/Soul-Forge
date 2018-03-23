/// @description Insert description here
// You can write your code in this editor
image_angle = direction+90;
if (tilemap_get_at_pixel(objPlayer.wallId, x, y)) {
	instance_destroy();
}