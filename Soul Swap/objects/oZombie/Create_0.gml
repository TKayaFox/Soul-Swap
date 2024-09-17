/// @description Initialize mob
// Inherit the parent event
event_inherited();

//set a new HP value

hp = 10;
damage = 1;
atkCD = 60;
atkRange = 10;


enum STATE{
	possessed,
	pathing,
	stopped,
	attacking,
	dead
}

states = STATE.pathing;