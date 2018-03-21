
objPlayer.buffTimer = 120;

switch(objPlayer.currentBuff){
	//red
	case 0:
			if(global.boosts[0] > 0){
				objPlayer.weaponCoolDownReduction = 5;
				global.boosts[0]--; 
			}
			break;
	//blue			
	case 1: 
			if(global.boosts[1] > 0){
				objPlayer.playerSpeed *=2;
				global.boosts[1]--; 
			}
			break;
	//yellow
	case 2:
			if(global.boosts[2]>0){
				instance_create_layer(x,y,"Bullets",objShield);
				global.boosts[2]--; 
			}
			break;
	//blue red
	case 3: 
			if(global.boosts[3] > 0){
				objPlayer.canTeleport = true;
				global.boosts[3]--; 
			}
			break;
	//yellow red
	case 4:
			if(global.boosts[4] > 0){
				objPlayer.bulletKillTimer = 240;
				global.boosts[4]--; 
			}
			break;
	//yellow blue		
	case 5: 
			if(global.boosts[5] > 0){
				objPlayer.bulletTime = 240;
				global.boosts[5]--; 
			}
			break;
			
			break;
}
