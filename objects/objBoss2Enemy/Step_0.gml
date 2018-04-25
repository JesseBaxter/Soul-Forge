image_angle = direction-90;
//normSpeed = 4;
direction = point_direction(x,y,objPlayer.x,objPlayer.y);
speed = normSpeed*global.speedConst;

//stop moving when close enough to player
/*
if (distance_to_object(objPlayer) < 10) {
	normSpeed = 0;
} else {
	normSpeed = 4;
}
*/

//when enemy health is none
if (hitpoints <= 0) {
	if(random(10>=5)){
		instance_create_layer(x,y,"Instances",objBlueComponent);
	}
	if(random(10>=5)){
		instance_create_layer(x-2,y-2,"Instances",objRedComponent);
	}
	if(random(10>=5)){
		instance_create_layer(x+2,y+2,"Instances",objYellowComponent);
	}
	instance_destroy();
}

//regenerating health if below max health
if (hitpoints < 75 || regenerating) {
	regenerating = true;
	hitpoints += .5;
	if (hitpoints >= 100) {
		regenerating = false;
	}
}

//shooting
if(cooldown<=0){
	if(room = level || room = room1)
		instance_create_layer(x,y,"Bullets",objBulletEnemyBasic);
	cooldown = 10*(1/global.speedConst);
}
if(cooldown > 100)
	cooldown = 100;