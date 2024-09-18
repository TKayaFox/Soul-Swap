/// @description Player or AI Control

targetSlope = (target.y - y)/(target.x - x)

if(point_direction(x,y,target.x,target.y) > 45 && point_direction(x,y,target.x,target.y) < 135){
	//Bottom Face of target
	xOffset = 0;
	yOffset = pathOffset;
}else if(point_direction(x,y,target.x,target.y) >= 135 && point_direction(x,y,target.x,target.y) <= 225){
	//Right Face of target
	xOffset = pathOffset;
	yOffset = 0;
}else if(point_direction(x,y,target.x,target.y) > 225 && point_direction(x,y,target.x,target.y) < 315){
	//Top Face of target
	xOffset = 0;
	yOffset = -pathOffset;
}else if(point_direction(x,y,target.x,target.y) >= 315 or point_direction(x,y,target.x,target.y) <= 45){
	//Left Face of target
	show_debug_message("Hi");
	xOffset = -pathOffset;
	yOffset = 0;
}

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
	}else{
		path_end();
	}
}

//else allow player input
else
{
	//Use Movement script to handle movement
	Player_Movement(playerSpd,accel,frict,0);
}