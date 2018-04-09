/// @description Insert description here
// You can write your code in this editor
if (shieldOn) {
	sprite_index = sprBoss2shield;
	speed = 0;
	shieldTimer--;
	if (shieldTimer <= 0) {
		shieldOn = false;
		shieldTimer = 50;
	}
	timer --;
	if(timer <=0){
		instance_create_layer(x,y,"Bullets",objBossBullet);
		timer = 160*(1/global.speedConst);
	}

	if(global.speedConst ==1 && timer >=200){
		timer = 160;
	}
}
else {
	sprite_index = sprBoss2;
	speed = normSpeed*global.speedConst;
	shieldRecharge--;
	if (shieldRecharge <= 0) {
		shieldOn = true;
		shieldRecharge = 50;
	}
}
image_angle = direction+90;
direction = point_direction(x,y,objPlayer.x,objPlayer.y);

if(hitpoints <= 0) {
	instance_destroy();
}