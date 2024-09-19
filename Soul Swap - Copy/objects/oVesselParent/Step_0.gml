/// @description Player or AI Control

//only do AI logic if computer controlled
if (player_possessed == false)
{	
	image_blend = c_white;
	//Follow AI Logic Script
	if(isPathing){
		if(alarm[0] = -1){
			//Pathing
			alarm[0] = pathingUpdateWait;
		}
	}
	
	//Make sure Attacking timer is working properly
	if(alarm[1] = -1){
		//Pathing
		alarm[1] = atkCD;
	}
}

//else allow player input
else
{
	//Use Movement script to handle movement
	Player_Movement(playerSpd,accel,frict,0);
	image_blend = c_blue;
}