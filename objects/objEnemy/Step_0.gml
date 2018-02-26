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
playerDetected = false;
playerRecorded = false;