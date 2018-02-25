//first keep track of point on track
xpath = x;
ypath = y;
path_end();
direction = point_direction(x,y,objPlayer.x,objPlayer.y);
move_towards_point(objPlayer.x,objPlayer.y,4);