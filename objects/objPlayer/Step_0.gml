/// @description Insert description here
// You can write your code in this editor

//Angle the player toward the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);
image_angle -= 90;

//Shooting, creates a bullet obj at the player if the left mouse button is pressed
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	//Created Bullet in the layer
    instance_create_layer(x, y, layer, objBullet);
	//Sets the cooldown to 3 (cooldown == rate of fire)
    cooldown = 5;
}
//Decriment cooldown by value, this will happen every game frame
cooldown -= 1; 

if keyboard_check(ord("W"))
{
   y=y-playerSpeed;
}
   
if keyboard_check(ord("A"))
{
   x=x-playerSpeed;
}
   
if keyboard_check(ord("S"))
{
   y=y+playerSpeed;
}
   
if keyboard_check(ord("D"))
{
   x=x+playerSpeed;
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