keyAttack = keyboard_check_pressed(vk_space);


//Attack when in possession state
if(keyAttack & canAttack & player_possessed){
	states = STATE.attacking
}

if(!player_possessed && point_distance(x,y,target.x,target.y) <= atkRange && canAttack){
	states = STATE.attacking;
}

if(isStunned)	states = STATE.stunned;

switch(states){
	case STATE.attacking:
		isPathing = false;
		canAttack = false;
		isAttacking = true;
		if(alarm[1] == -1) alarm[1] = atkCD;
	break;
	
	case STATE.pathing:
		isPathing = true;
		//Sprite Stuff
		//0 = right; 1 = Up; 2 = Left; 3 = Down
		if(directionNum == 0){
			sprite_index = sZombieRight
		}else if(directionNum == 1){
			sprite_index = sZombieUp
		}else if(directionNum == 2){
			sprite_index = sZombieLeft
		}else if(directionNum == 3){
			sprite_index = sZombieDown
		}
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
	break;
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
		else states = STATE.pathing;
	}
}



//Attacking sprite stuff

//0 = right; 1 = Up; 2 = Left; 3 = Down
if(directionNum == 0){
	attackCollisionMask = sZombieRightMask;
	attackSprite = sZombieRightAttack;
}else if(directionNum == 1){
	attackCollisionMask = sZombieUpMask;
	attackSprite = sZombieUpAttack;
}else if(directionNum == 2){
	attackCollisionMask = sZombieLeftMask;
	attackSprite = sZombieLeftAttack;
}else if(directionNum == 3){
	attackCollisionMask = sZombieDownMask;
	attackSprite = sZombieDownAttack;
}





















