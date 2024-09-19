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
pathingCounter = pathingUpdateWait;
isPathing = true;
path = path_add();
xOffset = 0;
yOffset = 0;
pathOffset = 20;

//attacking
damage = 1;
atkCD = 60;
atkRange = 10;
canAttack = true;
isAttacking = false;