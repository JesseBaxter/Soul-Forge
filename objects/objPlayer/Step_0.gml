/// @description Insert description here
// You can write your code in this editor

//Angle the player toward the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);
image_angle -= 90;
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
	
}
//Decriment cooldown by value, this will happen every game frame
cooldown -= 1; 

if keyboard_check(ord("W"))
{
   y=y-playerSpeed;
   isMoving = true;
}
   
if keyboard_check(ord("A"))
{
   x=x-playerSpeed;
   isMoving = true;
}
   
if keyboard_check(ord("S"))
{
   y=y+playerSpeed;
   isMoving = true;
}
   
if keyboard_check(ord("D"))
{
   x=x+playerSpeed;
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