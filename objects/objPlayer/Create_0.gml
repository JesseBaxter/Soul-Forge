/// @description Insert description here
// You can write your code in this editor
playerSpeed = 5;
mouse_xprevious = 0;
mouse_yprevious = 0;
cooldown = 0;
unlockedWeps = [1,1,0,0,0,0,0,0];
currentGun = 1;
wallId = layer_tilemap_get_id("layerWalls");
health = 100;
global.roomPrevious = room0;

global.redComponent = 0;
global.blueComponent = 0;
global.yellowComponent = 0;
//Buffs are fire rate, speed, shield, teleport, bullet kill, TIMESTOP
global.boosts = [0,0,0,0,0,0];

currentBuff = 0;
buffTimer = 0;
buffCooldown = 0;
weaponCoolDownReduction = 0;
canTeleport = false;
bulletKillTimer = 0;
bulletTime = 0;
global.lastRoom = room;
persistent = true;
createEnemiesLevelOne();