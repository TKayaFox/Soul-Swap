// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Movement(pSpeed, pAcceleration, pFriction, collisionBuffer){

	xVel = 0;
	yVel = 0;


	var keyUp = keyboard_check(ord("W"));
	var keyLeft = keyboard_check(ord("A"));
	var keyDown = keyboard_check(ord("S"));
	var keyRight = keyboard_check(ord("D"));
	
	inputX = keyRight - keyLeft;
	inputY = keyDown - keyUp;


	//Acceleration and Friction Math

	//Acceleration/Friction for X movement
	if(inputX != 0){
		//Accelerating
		if(abs(xVel + sign(inputX) * pAcceleration) < 5) xVel += sign(inputX) * pAcceleration; else xVel = Pick_Speed(pSpeed,inputX,inputY) * sign(inputX);
	}else{
		//Slowing Down
		if(abs(xVel) > pFriction) xVel -= sign(xVel) * pFriction; else xVel = 0;
	}

	//Acceleration/Friction for Y movement
	if(inputY != 0){
		//Accelerating
		if(abs(yVel + sign(inputY) * pAcceleration) < 5) yVel += sign(inputY) * pAcceleration; else yVel = Pick_Speed(pSpeed,inputX,inputY) * sign(inputY);
	}else{
		//Slowing Down
		if(abs(yVel) > pFriction) yVel -= sign(yVel) * pFriction; else yVel = 0;
	}

	//Keeps x/y speeds inside the limit of pSpeed
	yVel = clamp(yVel,-pSpeed,pSpeed);
	xVel = clamp(xVel,-pSpeed,pSpeed);

	//X Collision
	if(place_meeting(x + xVel + (sign(xVel)*collisionBuffer),y,oWall)){
		while(!place_meeting(x + sign(xVel) + (sign(xVel)*collisionBuffer),y,oWall)){
			x += sign(xVel);
		}
		xVel = 0;
	}

	x += xVel;

	//Y Collision
	if(place_meeting(x,y + yVel + (sign(yVel)*collisionBuffer),oWall)){
		while(!place_meeting(x,y + sign(yVel) + (sign(yVel)*collisionBuffer),oWall)){
			y += sign(yVel);
		}
		yVel = 0;
	}

	y += yVel;
}