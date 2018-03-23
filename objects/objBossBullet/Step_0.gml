/// @description Insert description here
// You can write your code in this editor
if(timer <=0){
	for(i  = 0; i<8;i++){
		this = instance_create_layer(x,y,"Bullets",objSmallBossBullet);
		this.direction = i*45;
	}
	timer = 35*(1/global.speedConst);
}
if(global.speedConst ==1 && timer >=50){
	timer = 35;
}
timer--;
if (tilemap_get_at_pixel(objPlayer.wallId, x, y)) {
	instance_destroy();
}
speed = normSpeed*global.speedConst; 