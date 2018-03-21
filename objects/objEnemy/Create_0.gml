/// @description Insert description here
// You can write your code in this editor
path_start(path0,4,path_action_reverse,true);
hitpoints = 100;

//show that player is found
playerClose = false;
playerFound = false;
playerRecorded = false;
playerDetected = false;

//track where is left off on path
xpath = 0;
ypath = 0;
pathPos = path_position;
onPath = true;
playerx = 0;
playery = 0;
cooldown = 0;
timer = 0;
normSpeed = 5;
//regenerate
regenerating = false;