if(objBlueCrafting.selected == true && objRedCrafting.selected == true ){
	if(global.redComponent > 0 && global.blueComponent>0){
		global.boosts[2]++;
		objCraftSuccessful.timer = 20;
		global.redComponent --;
		global.blueComponent--;
	}
	objBlueCrafting.selected = false;
	objRedCrafting.selected = false;
}

if(objYellowCrafting.selected == true && objRedCrafting.selected == true ){
	if(global.redComponent > 0 && global.yellowComponent>0){
		global.boosts[2]++;
		objCraftSuccessful.timer = 20;
		global.redComponent --;
		global.yellowComponent--;
	}
	objYellowCrafting.selected = false;
	objRedCrafting.selected = false;
}

if(objYellowCrafting.selected == true && objBlueCrafting.selected == true ){
	if(global.blueComponent > 0 && global.yellowComponent>0){
		global.boosts[2]++;
		objCraftSuccessful.timer = 20;
		global.blueComponent --;
		global.yellowComponent--;
	}
	objYellowCrafting.selected = false;
	objBlueCrafting.selected = false;
}


if(objBlueCrafting.selected == true){
	if( global.blueComponent>0){
		global.boosts[0]++;
		objCraftSuccessful.timer = 20;
		global.blueComponent--;
	}
	objBlueCrafting.selected = false;
}

if(objRedCrafting.selected == true){
	if( global.redComponent>0){
		global.boosts[1]++;
		objCraftSuccessful.timer = 20;
		global.redComponent --;
	}
	objRedCrafting.selected = false;
}

if(objYellowCrafting.selected == true){
	if( global.yellowComponent>0){
		global.boosts[1]++;
		objCraftSuccessful.timer = 20;
		global.yellowComponent --;
	}
	objYellowCrafting.selected = false;
}