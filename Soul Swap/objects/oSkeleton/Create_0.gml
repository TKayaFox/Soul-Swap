/// @description Initialize mob
// Inherit the parent event
event_inherited();

//set a new HP value
hp =5;
enemySpd = 1;
pathingUpdateWait = 10;
diagonalPathing = true;

//attacking
damage = 1;
atkCD = 20;
atkRange = 350;
isRanged = true;
projectile_speed = 4;