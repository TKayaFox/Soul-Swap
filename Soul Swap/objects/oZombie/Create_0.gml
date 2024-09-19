/// @description Initialize mob
// Inherit the parent event
event_inherited();

//set a new HP value

hp = 10;
damage = 1;
atkCD = 20;
atkRange = 10;
pathingUpdateWait = 10;
stunTime = 120;

attackCollisionMask = sZombieSlashMask;
attackSprite = sZombieLeftAttack;

enum STATE{
	attacking,
	pathing,
	stunned,
	possessed
}
states = STATE.pathing;