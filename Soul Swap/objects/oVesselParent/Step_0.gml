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
	}else{
		path_end();
	}
	
	//Pathing towards player side
	//0 = right; 1 = Up; 2 = Left; 3 = Down
	targetSlope = (target.y - y)/(target.x - x)

	if(point_direction(x,y,target.x,target.y) > 45 && point_direction(x,y,target.x,target.y) < 135){
		//Bottom Face of target
		xOffset = 0;
		yOffset = pathOffset;
		directionNum = 1;
	}else if(point_direction(x,y,target.x,target.y) >= 135 && point_direction(x,y,target.x,target.y) <= 225){
		//Right Face of target
		xOffset = pathOffset;
		yOffset = 0;
		directionNum = 2;
	}else if(point_direction(x,y,target.x,target.y) > 225 && point_direction(x,y,target.x,target.y) < 315){
		//Top Face of target
		xOffset = 0;
		yOffset = -pathOffset;
		directionNum = 3;
	}else if(point_direction(x,y,target.x,target.y) >= 315 or point_direction(x,y,target.x,target.y) <= 45){
		//Left Face of target
		xOffset = -pathOffset;
		yOffset = 0;
		directionNum = 0;
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
	directionX = inputX;
	directionY = inputY;
}