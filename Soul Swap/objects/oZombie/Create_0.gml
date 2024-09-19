/// @description Initialize mob
// Inherit the parent event
event_inherited();

//set a new HP value

hp = 10;
damage = 1;
atkCD = 60;
atkRange = 30;
pathingUpdateWait = 10;
stunTime = 120;
target = oPlayerGhost;
attackCollisionMask = sZombieLeftMask;
attackSprite = sZombieLeftAttack;
idleSprite = sZombieDown;

enum STATE{
	attacking,
	pathingToGate,
	returnToPath,
	pathingToTarget,
	stunned,
	possessed,
	pursuing
}
states = STATE.returnToPath;

path_start(Path2,enemySpd,0,false);