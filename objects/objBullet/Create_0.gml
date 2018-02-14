//***Set Up bullet motion***

//Sets the bullet direction to be the vector from x,y (player) to mouse_x, mouse_y
direction = point_direction(x, y, mouse_x, mouse_y);

//Gives the bullet a little bit of spread, between -2 and 2. 
direction = direction + random_range(-2, 2);

//Set the speed the bullet will travel at
speed = 16;

//Angle the sprite to be in line with the direction it is traveling
//only matters for non radially symmetric sprites 
image_angle = direction - 90;
