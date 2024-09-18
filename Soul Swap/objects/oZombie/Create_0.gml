/// @description Initialize mob
// Inherit the parent event
event_inherited();

//set a new HP value

hp = 10;
damage = 1;
atkCD = 60;
atkRange = 10;
pathingUpdateWait = 10;

enum STATE{
	attacking,
	pathing,	
}
states = STATE.pathing;