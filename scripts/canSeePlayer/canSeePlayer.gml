enemy = argument0;

x_dist = objPlayer.x - enemy.x;
y_dist = objPlayer.y - enemy.y;

magnitude = sqrt(sqr(x_dist) + sqr(y_dist));

x_step = x_dist/magnitude;
y_step = y_dist/magnitude;

x_check = enemy.x;
y_check = enemy.y;

while (!position_meeting(x_check, y_check, objPlayer)) {
	if (tilemap_get_at_pixel(objPlayer.wallId, x_check, y_check)) {
		return false;
	}
	x_check += x_step;
	y_check += y_step;
}

return true;
