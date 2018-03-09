
objPlayer.buffTimer = 120;

switch(objPlayer.currentBuff){
	case 0:
			if(global.boosts[0] > 0){
				objPlayer.playerSpeed *=2;
				global.boosts[0]--; 
			}
			break;
	case 1: 
			if(global.boosts[1] > 0){
				objPlayer.weaponCoolDownReduction = 5;
				global.boosts[1]--; 
			}
			break;
	case 2: 
			if(global.boosts[2] > 0){
				objPlayer.canTeleport = true;
				global.boosts[2]--; 
			}
			break;
}