/// @description Insert description here
// You can write your code in this editor
if (tilemap_get_at_pixel(objPlayer.wallId, x, y)) {
	instance_create_layer(x,y,layer,objEXPLOSION);
	instance_destroy();
}
