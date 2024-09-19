keyAttack = keyboard_check_pressed(vk_space);
if(target == oTownGate){
	pathOffset = 10;
}

//Attack when in possession state
if(keyAttack & canAttack & player_possessed){
	states = STATE.attacking
}

if(!player_possessed && point_distance(x,y,target.x,target.y) <= atkRange && canAttack){
	states = STATE.attacking;
}

if(point_distance(x,y,target.x,target.y) <= detectiongRange){
	states = STATE.pathingToTarget;
	pathX = x;
	pathY = y;
	pathPosition = path_position;
}else{
	if(states == STATE.pathingToTarget) states = STATE.returnToPath;
}

if(states = STATE.pathingToGate && path_position == 1){
	states = STATE.attacking;
}

if(isStunned)	states = STATE.stunned;

switch(states){
	case STATE.attacking:
		image_speed = 1;
		isPathing = false;
		canAttack = false;
		isAttacking = true;
		if(alarm[1] == -1) alarm[1] = atkCD;
	break;
	
	case STATE.pathingToTarget:
		isPathing = true;
		//Pahting sprite Stuff
		//0 = right; 1 = Up; 2 = Left; 3 = Down
		if(directionNum == 0){
			sprite_index = sZombieRight;
			idleSprite = sZombieRight;
		}else if(directionNum == 1){
			sprite_index = sZombieUp;
			idleSprite = sZombieUp;
		}else if(directionNum == 2){
			sprite_index = sZombieLeft;
			idleSprite = sZombieLeft;
		}else if(directionNum == 3){
			sprite_index = sZombieDown;
			idleSprite = sZombieDown;
		}
	break;
	
	case STATE.returnToPath:
		var distance = point_distance(x,y,pathX,pathY);
		move_towards_point(pathX,pathY,min(distance,enemySpd));
		if(x == pathX and y == pathY){
			states = STATE.pathingToGate;
		}
	break;
	
	case STATE.pathingToGate:
		path_start(Path2,enemySpd,0,false);
		path_position = pathPosition;
	break;
	
	case STATE.stunned:
		if(isStunned){
			isPathing = false;
			if(sprite_index != sZombieStunned){
				sprite_index = sZombieStunned;
			}
			if(alarm[2] == -1) alarm[2] = stunTime;
		}
	break;
	
	case STATE.possessed:
		isPathing = false;
		
		path_end();
		//Possessed Sprite Stuff
		if(!isAttacking){
			if(directionX > 0 && directionY == 0 or directionY > 0 && directionX > 0){
				//Moving Right
				image_speed = 1;
				sprite_index = sZombieRight;
				idleSprite = sZombieRight;
			
			}else if(directionX < 0 && directionY == 0 or directionY < 0 && directionX > 0){
				//Moving Left
				image_speed = 1;
				sprite_index = sZombieLeft;
				idleSprite = sZombieLeft;
			
			}else if(directionY < 0 && directionX == 0 or directionY < 0 && directionX < 0){
				//Moving Up
				image_speed = 1;
				sprite_index = sZombieUp;
				idleSprite = sZombieUp;
			
			}else if(directionY > 0 && directionX == 0 or directionY > 0 && directionX < 0){
				//Moving Down
				image_speed = 1;
				sprite_index = sZombieDown;
				idleSprite = sZombieDown;
		
			}else{
				image_speed = 0;
				image_index = 0;
				sprite_index = idleSprite;
			}
		}
	
	break;
}


//Attacking sprite stuff

if(sprite_index == sZombieRight){
	attackCollisionMask = sZombieRightMask;
	attackSprite = sZombieRightAttack;
}else if(sprite_index == sZombieLeft){
	attackCollisionMask = sZombieLeftMask;
	attackSprite = sZombieLeftAttack;
}else if(sprite_index == sZombieDown){
	attackCollisionMask = sZombieDownMask;
	attackSprite = sZombieDownAttack;
}else if(sprite_index == sZombieUp){
	attackCollisionMask = sZombieUpMask;
	attackSprite = sZombieUpAttack;
}


if(isAttacking){
	if(sprite_index != attackSprite){
		sprite_index = attackSprite;
		instance_create_layer(x,y,"Enemies",oZombieAttackMask);
		if(oZombieAttackMask.sprite_index != attackCollisionMask) oZombieAttackMask.sprite_index = attackCollisionMask;
	}
	
	if(image_index >= image_number - 1){
		sprite_index = idleSprite;
		isAttacking = false;
		if(player_possessed) states = STATE.possessed;
		else states = STATE.pathingToGate;
	}
}


















