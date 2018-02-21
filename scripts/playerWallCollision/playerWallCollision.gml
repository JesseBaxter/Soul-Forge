isCollide = true;

vectorx = mouse_x - objPlayer.x;
vectory = mouse_y - objPlayer.y;

unitVector0x = vectorx / sqrt((vectorx * vectorx) + (vectory * vectory))
unitVector0y = vectorx / sqrt((vectorx * vectorx) + (vectory * vectory))

unitVector1x = sqrt(abs(-unitVector0y) / abs(unitVector0x - (unitVector0y * unitVector0y)));
show_debug_message("unitx = " + string(unitVector1x));
unitVector1y = sqrt(1 - (unitVector1x * unitVector1x));

point0x = objPlayer.x + 6*unitVector0x + 12*unitVector1x;
point0y = objPlayer.y + 6*unitVector0y + 12*unitVector1y;

point1x = objPlayer.x + 6*unitVector0x + 12*unitVector1x;
point1y = objPlayer.y - 6*unitVector0y - 12*unitVector1y;

point2x = objPlayer.x - 6*unitVector0x - 12*unitVector1x;
point2y = objPlayer.y - 6*unitVector0y - 12*unitVector1y;

point3x = objPlayer.x - 6*unitVector0x - 12*unitVector1x;
point3y = objPlayer.y + 6*unitVector0y + 12*unitVector1y;

while(isCollide) {
	isCollide = false;
	if (tilemap_get_at_pixel(objPlayer.wallId, point0x, point0y)) {
		objPlayer.x = objPlayer.x - unitVector0x - unitVector1x;
		objPlayer.y = objPlayer.y - unitVector0y - unitVector1y;
		isCollide = true;
	}	
	if (tilemap_get_at_pixel(objPlayer.wallId, point1x, point1y)) {
		objPlayer.x = objPlayer.x - unitVector0x - unitVector1x;
		objPlayer.y = objPlayer.y + unitVector0y + unitVector1y;
		isCollide = true;
	}
	if (tilemap_get_at_pixel(objPlayer.wallId, point2x, point2y)) {
		objPlayer.x = objPlayer.x + unitVector0x + unitVector1x;
		objPlayer.y = objPlayer.y + unitVector0y + unitVector1y;
		isCollide = true;
	}
	if (tilemap_get_at_pixel(objPlayer.wallId, point3x, point3y)) {
		objPlayer.x = objPlayer.x + unitVector0x + unitVector1x;
		objPlayer.y = objPlayer.y - unitVector0y - unitVector1y;
		isCollide = true;
	}
}