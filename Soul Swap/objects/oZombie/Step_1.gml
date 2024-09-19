keyAttack = keyboard_check_pressed(vk_space);

if(keyAttack & canAttack & player_possessed){
	states = STATE.attacking
}
if(player_possessed) states = STATE.possessed;

switch(states){
	case STATE.attacking:
		isPathing = false;
		canAttack = false;
		isAttacking = true;
		if(alarm[1] == -1) alarm[1] = atkCD;
	break;
	case STATE.pathing:
		isPathing = true;
	break;
	case STATE.stopped:
		isPathing = false;
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
		sprite_index = sZombieDown;
		isAttacking = false;
		states = STATE.pathing;
	}
}