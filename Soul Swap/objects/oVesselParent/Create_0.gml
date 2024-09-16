/// @description Initialize Object
player_possessed = false;
hp = 1;

//movement
enemySpd = 1;
playerSpd = 10;
accel = 4;
frict = .3;

//pathing
target = oPlayerGhost;
pathingUpdateWait = 60;
diagonalPathing = true;