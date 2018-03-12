/// @description Insert description here
// You can write your code in this editor
switch(currentBuff){
	case 0: draw_sprite(sprSpeedUp,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	case 1: draw_sprite(sprFireRateUp,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	case 2: draw_sprite(sprTeleport,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
}
	
draw_self();