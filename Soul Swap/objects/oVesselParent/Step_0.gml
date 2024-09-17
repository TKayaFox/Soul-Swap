/// @description Player or AI Control

//only do AI logic if computer controlled
if (player_possessed == false)
{
	//get player instance id from controller
	var player_vessel = oController.player_vessel;
	
	//Follow AI Logic Script
	if(isPathing){
		if(alarm[0] = -1){
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