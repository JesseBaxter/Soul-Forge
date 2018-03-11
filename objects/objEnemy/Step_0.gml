/// @description Insert description here
// You can write your code in this editor
image_angle = direction-90;
if(hitpoints <= 0)
	instance_destroy();
	
//move back if reached player's previous seen point
if (distance_to_point(playerx, playery) == 0 && !playerDetected) {
	move_towards_point(xpath, ypath, 4);
}

if (distance_to_point(xpath, ypath) == 0 && !playerDetected && !onPath) {
	path_start(path0,4,path_action_reverse,true);
	path_position = pathPos;
	playerFound = false;
	onPath = true;
}

if(playerDetected ){
	if (playerRecorded) {
		playerx = objPlayer.x;
		playery = objPlayer.y;
	}
	path_end();
	direction = point_direction(x,y,playerx,playery);
	move_towards_point(playerx,playery,4);
	
	if(cooldown<=0){
		instance_create_layer(x,y,layer,objBulletEnemyBasic);
		cooldown = 10;
	}
	
}

cooldown--;

if(timer<= 0){
	playerDetected = false;
	playerRecorded = false;
}
timer--;

//when enemy health is none
if (hitpoints <= 0) {
	rtimer++;
	if (rtimer >= 2*10) {
		rtimer = 0;
		instance_create_layer(x,y,layer,objEnemy);
		instance_destroy();
	}
}

