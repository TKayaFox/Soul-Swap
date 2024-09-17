switch(states){
	case STATE.possessed:
		isPathing = false;
	break;
	
	case STATE.pathing:
		isPathing = true;
	break;
	
	case STATE.attacking:
		Attack(atkCD,atkRange,target);
	break;
	
	case STATE.stopped:
		isPathing = false;
		xVel = 0;
		yVel = 0;
	break;
	
	case STATE.dead:
	break;	
}