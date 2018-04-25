red = objRedCrafting.selected;
blue = objBlueCrafting.selected;
yellow = objYellowCrafting.selected;

if(blue && red && yellow){
	objBlueCrafting.selected = false;
	objRedCrafting.selected = false;
	objYellowCrafting.selected = false
	objRedCrafting.sprite_index = sprRedComponentBig;
	objBlueCrafting.sprite_index = sprBlueComponentBig;
	objYellowCrafting.sprite_index = sprYellowComponentBig;
}

else if(blue && red){
	if(global.redComponent > 0 && global.blueComponent>0){
		global.boosts[3]++;
		objCraftSuccessful.timer = 20;
		global.redComponent --;
		global.blueComponent--;
	}
	objBlueCrafting.selected = false;
	objRedCrafting.selected = false;
	objRedCrafting.sprite_index = sprRedComponentBig;
	objBlueCrafting.sprite_index = sprBlueComponentBig;
}

else if(yellow && red ){
	if(global.redComponent > 0 && global.yellowComponent>0){
		global.boosts[4]++;
		objCraftSuccessful.timer = 20;
		global.redComponent --;
		global.yellowComponent--;
	}
	objYellowCrafting.selected = false;
	objRedCrafting.selected = false;
	objRedCrafting.sprite_index = sprRedComponentBig;
	objYellowCrafting.sprite_index = sprYellowComponentBig;
}

else if(yellow && blue){
	if(global.blueComponent > 0 && global.yellowComponent>0){
		global.boosts[5]++;
		objCraftSuccessful.timer = 20;
		global.blueComponent --;
		global.yellowComponent--;
	}
	objYellowCrafting.selected = false;
	objBlueCrafting.selected = false;
	
	objBlueCrafting.sprite_index = sprBlueComponentBig;
	objYellowCrafting.sprite_index = sprYellowComponentBig;
}


else if(red){
	if( global.redComponent>0){
		global.boosts[0]++;
		objCraftSuccessful.timer = 20;
		global.redComponent --;
	}
	objRedCrafting.selected = false;
	objRedCrafting.sprite_index = sprRedComponentBig;
	
}

else if(blue){
	if( global.blueComponent>0){
		global.boosts[1]++;
		objCraftSuccessful.timer = 20;
		global.blueComponent--;
	}
	objBlueCrafting.selected = false;
	
	objBlueCrafting.sprite_index = sprBlueComponentBig;
	
}

else if(yellow){
	if( global.yellowComponent>0){
		global.boosts[2]++;
		objCraftSuccessful.timer = 20;
		global.yellowComponent --;
	}
	objYellowCrafting.selected = false;

	objYellowCrafting.sprite_index = sprYellowComponentBig;
}
