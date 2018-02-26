//first keep track of point on track when player is first detected
if (!playerFound) {
	xpath = x;
	ypath = y;
	pathPos = path_position;
}
//prevents enemy from constantly recoding its position
playerFound = true;
playerDetected = true;
//prevent enemy from recording player location if player is no longer in view
playerRecorded = true;
if (playerRecorded) {
	playerx = objPlayer.x;
	playery = objPlayer.y;
}
path_end();
direction = point_direction(x,y,playerx,playery);
move_towards_point(playerx,playery,4);
//enemy no longer on path
onPath = false;
timer = 100;