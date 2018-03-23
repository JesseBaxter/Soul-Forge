/// @description Insert description here
// You can write your code in this editor
image_angle = direction+90;
direction = point_direction(x,y,objPlayer.x,objPlayer.y);
timer --;
if(timer <=0){
	instance_create_layer(x,y,"Bullets",objBossBullet);
	timer = 160;
}