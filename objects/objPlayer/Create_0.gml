/// @description Insert description here
// You can write your code in this editor
playerSpeed = 5;
mouse_xprevious = 0;
mouse_yprevious = 0;
cooldown = 0;
unlockedWeps = [1,1,0,0,0,0,0,0];
currentGun = 1;
wallId = layer_tilemap_get_id("layerWalls");
health = 10;
global.roomPrevious = room0;

global.redComponent = 0;
global.blueComponent = 0;
global.yellowComponent = 0;
//Buffs are speed, fire rate, teleport.
global.boosts = [100,100,100];

currentBuff = 0;
buffTimer = 0;
weaponCoolDownReduction = 0;
canTeleport = false;

persistent = true;