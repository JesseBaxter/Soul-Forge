isCollide = true;

vectorx = mouse_x - objPlayer.x;
show_debug_message("vector x = " + string(vectorx));
vectory = mouse_y - objPlayer.y;
show_debug_message("vector y = " + string(vectory));

unitVector0x = vectorx / sqrt((vectorx * vectorx) + (vectory * vectory));
show_debug_message("unit 0 x = " + string(unitVector0x));
unitVector0y = sqrt(1 - (unitVector0x * unitVector0x));
if(vectory < 0) unitVector0y *= -1;
show_debug_message("unit 0 y = " + string(unitVector0y));

unitVector1x = -unitVector0y;
show_debug_message("unit 1 x = " + string(unitVector1x));
unitVector1y = unitVector0x;
show_debug_message("unit 1 y = " + string(unitVector1y));

bufferSmall = 4;
bufferLarge = 6;

point0x = objPlayer.x + bufferSmall*unitVector0x + bufferLarge*unitVector1x;
point0y = objPlayer.y + bufferSmall*unitVector0y + bufferLarge*unitVector1y;

point1x = objPlayer.x + bufferSmall*unitVector0x - bufferLarge*unitVector1x;
point1y = objPlayer.y + bufferSmall*unitVector0y - bufferLarge*unitVector1y;

point2x = objPlayer.x - bufferSmall*unitVector0x - bufferLarge*unitVector1x;
point2y = objPlayer.y - bufferSmall*unitVector0y - bufferLarge*unitVector1y;

point3x = objPlayer.x - bufferSmall*unitVector0x + bufferLarge*unitVector1x;
point3y = objPlayer.y - bufferSmall*unitVector0y + bufferLarge*unitVector1y;

point0col = tilemap_get_at_pixel(objPlayer.wallId, point0x, point0y);
point1col = tilemap_get_at_pixel(objPlayer.wallId, point1x, point1y);
point2col = tilemap_get_at_pixel(objPlayer.wallId, point2x, point2y);
point3col = tilemap_get_at_pixel(objPlayer.wallId, point3x, point3y);


if(point0col || point1col || point2col || point3col) {
	objPlayer.x = objPlayer.xprevious;
	objPlayer.y = objPlayer.yprevious;
	
	if (objPlayer.mouse_xprevious == mouse_x || objPlayer.mouse_yprevious == mouse_y) {
	if (point0col) {
		show_debug_message("point0 hit");
		objPlayer.x = objPlayer.x - unitVector0x - unitVector1x;
		objPlayer.y = objPlayer.y - unitVector0y - unitVector1y;
		
	}	
	if (point1col) {
		show_debug_message("point1 hit");
		objPlayer.x = objPlayer.x - unitVector0x + unitVector1x;
		objPlayer.y = objPlayer.y - unitVector0y + unitVector1y;

	}
	if (point2col) {
		show_debug_message("point2 hit");
		objPlayer.x = objPlayer.x + unitVector0x + unitVector1x;
		objPlayer.y = objPlayer.y + unitVector0y + unitVector1y;
		
	}
	if (point3col) {
		show_debug_message("point3 hit");
		objPlayer.x = objPlayer.x + unitVector0x - unitVector1x;
		objPlayer.y = objPlayer.y + unitVector0y - unitVector1y;
		
	}
}
}

if (objPlayer.mouse_xprevious != mouse_x || objPlayer.mouse_yprevious != mouse_y) {
	if (point0col) {
		show_debug_message("point0 hit");
		objPlayer.x = objPlayer.x - unitVector0x - unitVector1x;
		objPlayer.y = objPlayer.y - unitVector0y - unitVector1y;
		
	}	
	if (point1col) {
		show_debug_message("point1 hit");
		objPlayer.x = objPlayer.x - unitVector0x + unitVector1x;
		objPlayer.y = objPlayer.y - unitVector0y + unitVector1y;

	}
	if (point2col) {
		show_debug_message("point2 hit");
		objPlayer.x = objPlayer.x + unitVector0x + unitVector1x;
		objPlayer.y = objPlayer.y + unitVector0y + unitVector1y;
		
	}
	if (point3col) {
		show_debug_message("point3 hit");
		objPlayer.x = objPlayer.x + unitVector0x - unitVector1x;
		objPlayer.y = objPlayer.y + unitVector0y - unitVector1y;
		
	}
}