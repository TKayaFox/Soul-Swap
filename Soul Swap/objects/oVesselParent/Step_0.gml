/// @description Player or AI Control

//Immediately try to attack, then let attack logic handle future attempts
alarm[1] = 0;

//only do AI logic if computer controlled
if (player_possessed == false)
{	
	//Follow AI Logic Script
	if(isPathing){
		if(alarm[0] = -1){
			//Pathing
			alarm[0] = pathingUpdateWait;
		}
	}
}

//else allow player input
else
{
	//Use Movement script to handle movement
	Player_Movement(playerSpd,accel,frict,0);
}