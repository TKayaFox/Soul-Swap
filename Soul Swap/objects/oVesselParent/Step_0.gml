/// @description Player or AI Control

//only do AI logic if computer controlled
if (player_possessed == false)
{
	//Follow AI Logic Script
	Mob_AI(3,true,oVesselParent,oWall);
}

//else allow player input
else
{
	//Use Movement script to handle movement
	Player_Movement(spd,accel,frict);
}