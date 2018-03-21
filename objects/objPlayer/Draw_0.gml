/// @description Insert description here
// You can write your code in this editor
switch(currentBuff){
	case 0: draw_sprite(sprFireRateUp,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	case 1: draw_sprite(sprSpeedUp,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	case 2: draw_sprite(sprShieldIcon,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	case 3: draw_sprite(sprTeleport,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	case 4:
			draw_sprite(sprBulletDeathIcon,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	case 5:
			draw_sprite(sprHourGlass,1,camera_get_view_x(view_camera[0]) + 10,camera_get_view_y(view_camera[0])+ 10);
			break;
	
			
}
	
draw_self();

draw_healthbar(x-8,y-18,x+8,y-15,(health/10)*100,c_black,c_red,c_green,0,true, true)
