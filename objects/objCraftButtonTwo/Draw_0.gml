/// @description Insert description here
// You can write your code in this editor
red = objRedCrafting.selected;
blue = objBlueCrafting.selected;
yellow = objYellowCrafting.selected;

if(red && blue&& yellow){
	
	draw_text(x, y+30,"No combination")
}
else if(red && blue){
	draw_sprite(sprTeleport,1,x+60,y-60)
	draw_text(x, y+30,"Teleportation buff")
}
else if(red && yellow){
	draw_sprite(sprBulletDeathIcon,1,x+60,y-60)
	draw_text(x, y+30,"Destroy Bullets")
}
else if(yellow && blue){
	draw_sprite(sprHourGlass,1,x+60,y-60)
	draw_text(x, y+30,"Slow down time")
}
else if(blue){
	draw_sprite(sprSpeedUp,1,x+60,y-60)
	draw_text(x, y+30,"Speed Up")
}
else if(red){
	draw_sprite(sprFireRateUp,1,x+60,y-60)
	draw_text(x, y+30,"Fire rate Up")
}
else if(yellow){
	draw_sprite(sprShieldIcon,1,x+60,y-60)
	draw_text(x, y+30,"Temporary shield")
}
draw_self();