/// @description Insert description here
// You can write your code in this editor

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