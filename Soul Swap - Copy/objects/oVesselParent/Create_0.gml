/// @description Initialize Object
player_possessed = false;
hp = 5;
team = 0;

//Possession key (for leaving possession)
possess_key = vk_enter;
possess_key2 = ord("E");

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

//attacking
damage = 1;
atkCD = 20;
atkRange = 10;
projectile_speed = 1;
cooldown = false;


//Try to attack and start Attack logic loop
alarm_set(1,1);