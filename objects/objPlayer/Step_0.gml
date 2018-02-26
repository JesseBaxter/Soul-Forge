/// @description Insert description here
// You can write your code in this editor

//Angle the player toward the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
isMoving = false;

if(health == 0)
	instance_destroy();

//Shooting, creates a bullet obj at the player if the left mouse button is pressed
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	//Created Bullet in the layer
   // instance_create_layer(x, y, layer, objBullet);
	//Sets the cooldown to 3 (cooldown == rate of fire)
    //cooldown = 5;
	
	if(currentGun == 1){
		instance_create_layer(x, y, layer, objBulletFist);
		cooldown = 5;
	}
	
	if(currentGun == 2){
		instance_create_layer(x,y,layer, objBullet)
		cooldown = 4;
	}
	
	if(currentGun == 3){
		instance_create_layer(x,y,layer,objBulletFast);
		cooldown = 8;
	}
	
	if(currentGun == 4){
		instance_create_layer(x,y,layer,objBulletKnife);
		cooldown = 10;
	}
	
	if(currentGun == 5){
		instance_create_layer(x,y,layer,objBulletPipe);
		cooldown = 5;
	}
	
	if(currentGun == 6){
		instance_create_layer(x,y,layer,objBulletArrow);
		cooldown = 15;
	}
	
	if(currentGun == 7){
		instance_create_layer(x,y,layer,objBulletRocket);
		cooldown = 20;
	}
	
	if(currentGun == 8){
		instance_create_layer(x,y,layer,objBulletSword);
		cooldown = 5;
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
if keyboard_check_pressed(ord("R")){
	game_restart();
}
//Update previous mouse position
playerWallCollision();
mouse_xprevious = mouse_x;
mouse_yprevious = mouse_y;