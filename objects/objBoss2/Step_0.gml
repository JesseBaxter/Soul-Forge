/// @description Insert description here
// You can write your code in this editor
if (shieldOn) {
	sprite_index = sprBossTwoShield;
	//speed = 0;
	shieldTimer--;
	if (shieldTimer <= 0) {
		shieldOn = false;
		shieldTimer = 150;
	}
}
else {
	sprite_index = sprBossTwo;
	//speed = normSpeed*global.speedConst;
	shieldRecharge--;
	if (shieldRecharge <= 0) {
		shieldOn = true;
		shieldRecharge = 150;
	}
}
//image_angle = direction+90;
//direction = point_direction(x,y,objPlayer.x,objPlayer.y);

timer --;
if(timer <=0){
	instance_create_layer(x,y,"Bullets",objBoss2Enemy);
	timer = 70*(1/global.speedConst);
}
if(global.speedConst ==1 && timer >=200){
	timer = 70;
}

if(hitpoints <= 0) {
	instance_destroy();
}