keyUp = keyboard_check(ord("W"));
keyLeft = keyboard_check(ord("A"));
keyDown = keyboard_check(ord("S"));
keyRight = keyboard_check(ord("D"));

inputX = keyRight - keyLeft;
inputY = keyDown - keyUp;


//Acceleration and Friction Math
if(inputX != 0){
	if(abs(xVel + sign(inputX) * accel) < 5) xVel += sign(inputX) * accel; else xVel = PickSpeed(spd,diagSpd) * sign(inputX);
}else{ 
	if(abs(xVel) > frict) xVel -= sign(xVel) * frict; else xVel = 0;
}

if(inputY != 0){
	if(abs(yVel + sign(inputY) * accel) < 5) yVel += sign(inputY) * accel; else yVel = PickSpeed(spd,diagSpd) * sign(inputY);
}else{ 
	if(abs(yVel) > frict) yVel -= sign(yVel) * frict; else yVel = 0;
}

yVel = clamp(yVel,-spd,spd);
xVel = clamp(xVel,-spd,spd);

//X
if(place_meeting(x + xVel,y,oWall)){
	while(!place_meeting(x + sign(xVel),y,oWall)){
		x += sign(xVel);
	}
	xVel = 0;
}

x += xVel;

//Y
if(place_meeting(x,y + yVel,oWall)){
	while(!place_meeting(x,y + sign(yVel),oWall)){
		y += sign(yVel);
	}
	yVel = 0;
}

y += yVel;