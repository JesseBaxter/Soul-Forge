if(objBlueCrafting.selected == true && objBlueCrafting.selected == true ){
	if(global.redComponent > 0 && global.blueComponent>0){
		global.boosts[2]++;
	}
	objBlueCrafting.selected = false;
	objRedCrafting.selected = false;
}

if(objBlueCrafting.selected == true){
	if( global.blueComponent>0){
		global.boosts[0]++;
	}
	objBlueCrafting.selected = false;
}

if(objRedCrafting.selected == true){
	if( global.redComponent>0){
		global.boosts[1]++;
	}
	objRedCrafting.selected = false;
}