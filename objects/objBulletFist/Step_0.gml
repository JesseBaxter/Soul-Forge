/// @description Insert description here
// You can write your code in this editor
speed = normSpeed*global.speedConst; 
if (timer == 0)
{
	instance_destroy();
}
if(objPlayer.bulletTime<=0)
timer--;