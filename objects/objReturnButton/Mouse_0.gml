/// @description Insert description here
// You can write your code in this editor

room_goto(global.lastRoom);
global.boolStart = true;
if (instance_exists(objEnemy)) {
	objEnemy.startTimer = 3;
}
