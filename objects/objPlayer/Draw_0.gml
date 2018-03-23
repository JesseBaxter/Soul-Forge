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

switch(currentGun){
	case 1: draw_sprite(sprFist,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
	case 2: draw_sprite(sprGun,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
	case 3: draw_sprite(sprFastGun,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
	case 4: draw_sprite(sprKnives,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
	case 5:
			draw_sprite(sprPipe,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
	case 6:
			draw_sprite(sprBow,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
	case 7:
			draw_sprite(sprRocket,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
	case 8:
			draw_sprite(sprSword,1,camera_get_view_x(view_camera[0]) + 30,camera_get_view_y(view_camera[0])+ 50);
			break;
}
	
draw_self();

draw_healthbar(x-10,y-18,x+10,y-15,health,c_black,c_red,c_green,0,true, true)
