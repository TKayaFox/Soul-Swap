/// @description Player or AI Control

//only do AI logic if computer controlled
if (player_possessed == false)
{
	Mob_AI();
}

//else allow player input
else
{
	movement(keyboard_check(ord("A")), keyboard_check(ord("D")), keyboard_check(ord("W")), keyboard_check(ord("S")), hspeed, vspeed, move_speed);
}