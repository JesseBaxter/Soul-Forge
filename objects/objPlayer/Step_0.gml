/// @description Insert description here
// You can write your code in this editor

//Angle the player toward the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
isMoving = false;

if(health == 0) {
	game_restart();
}

//Shooting, creates a bullet obj at the player if the left mouse button is pressed
if (mouse_check_button(mb_left)) && (cooldown < 1) && room != pauseMenu && room != craftingMenu
{
	//Created Bullet in the layer
    // instance_create_layer(x, y, layer, objBullet);
	//Sets the cooldown to 3 (cooldown == rate of fire)
    //cooldown = 5;
	
	if(currentGun == 1){
		instance_create_layer(x, y, "Bullets", objBulletFist);
		cooldown = 5-weaponCoolDownReduction;
	}
	
	if(currentGun == 2){
		instance_create_layer(x,y,"Bullets", objBullet)
		cooldown = 4-weaponCoolDownReduction;
	}
	
	if(currentGun == 3){
		instance_create_layer(x,y,"Bullets",objBulletFast);
		cooldown = 8-weaponCoolDownReduction;
	}
	
	if(currentGun == 4){
		instance_create_layer(x,y,"Bullets",objBulletKnife);
		cooldown = 10-weaponCoolDownReduction;
	}
	
	if(currentGun == 5){
		instance_create_layer(x,y,"Bullets",objBulletPipe);
		cooldown = 5-weaponCoolDownReduction;
	}
	
	if(currentGun == 6){
		instance_create_layer(x,y,"Bullets",objBulletArrow);
		cooldown = 15-weaponCoolDownReduction;
	}
	
	if(currentGun == 7){
		instance_create_layer(x,y,"Bullets",objBulletRocket);
		cooldown = 20-weaponCoolDownReduction;
	}
	
	if(currentGun == 8){
		instance_create_layer(x,y,"Bullets",objBulletSword);
		cooldown = 5-weaponCoolDownReduction;
	}
}
//Decriment cooldown by value, this will happen every game frame
cooldown -= 1; 

if keyboard_check(ord("W"))
{
   for(i=0; i<playerSpeed; i++) {
	   y=y-1;
	   playerWallCollision();
   }
   isMoving = true;
}
   
if keyboard_check(ord("A"))
{
   for(i=0; i<playerSpeed; i++) {
	   x=x-1;
	   playerWallCollision();
   }
   isMoving = true;
}
   
if keyboard_check(ord("S"))
{
   for(i=0; i<playerSpeed; i++) {
	   y=y+1;
	   playerWallCollision();
   }
   isMoving = true;
}
   
if keyboard_check(ord("D"))
{
   for(i=0; i<playerSpeed; i++) {
	   x=x+1;
	   playerWallCollision();
   }
   isMoving = true;
}

if (isMoving) {
	sprite_index = sprPlayerWalk;
}
else {
	sprite_index = sprPlayer;
}

if (keyboard_check(ord("1")) && unlockedWeps[0] == 1){
	currentGun = 1;
}

if (keyboard_check(ord("2")) && unlockedWeps[1] == 1){
	currentGun = 2;
}

if (keyboard_check(ord("3")) && unlockedWeps[2] == 1){
	currentGun = 3;
}

if (keyboard_check(ord("4")) && unlockedWeps[3] == 1){
	currentGun = 4;
}

if (keyboard_check(ord("5")) && unlockedWeps[4] == 1){
	currentGun = 5;
}

if (keyboard_check(ord("6")) && unlockedWeps[5] == 1){
	currentGun = 6;
}

if (keyboard_check(ord("7")) && unlockedWeps[6] == 1){
	currentGun = 7;
}

if (keyboard_check(ord("8")) && unlockedWeps[7] == 1){
	currentGun = 8;
}

if keyboard_check_pressed(vk_escape){
	if(room == level || room==room1){
		global.lastRoom = room;
		room_set_persistent(room,true);
		room_goto(pauseMenu);
		objStartPosition.x=x;
		objStartPosition.y=y;
	}
}

if (keyboard_check(ord("E"))&&buffCooldown<=0){
	useBuff();
	buffCooldown = 30;
}

if(buffTimer<=0)
	unBuff();

buffTimer--;
buffCooldown--;

if (keyboard_check(ord("Q")) && canTeleport){
	x = mouse_x;
	y = mouse_y;
}

if(bulletKillTimer >=0){
	global.destroyBullet = true;
}
else{
	global.destroyBullet = false;
}
bulletKillTimer--;

if(bulletTime >=0){
	global.speedConst *= 0.95; 
	
}
else{
	global.speedConst = 1;
}
bulletTime--;


/*
if keyboard_check(ord("E"))
{
   playerSpeed++;
}

if keyboard_check(ord("Q"))
{
   playerSpeed--;
}
*/
if keyboard_check_pressed(ord("L")){
	game_restart();
}
//Update previous mouse position
playerWallCollision();
mouse_xprevious = mouse_x;
mouse_yprevious = mouse_y;

//if keyboard_check_pressed(vk_space) {
//	room_goto_next();
//}
