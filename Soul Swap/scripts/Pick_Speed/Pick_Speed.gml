/// @description Picks between diagonal or regualr speed
//If pressing two keys at a time this switches to using diagonal speed
//otherwise it uses regular speed
function Pick_Speed(regularspeed, inputX, inputY){
	var diagSpd = sqrt(sqr(regularspeed)/2);
	if(sign(inputX) != 0 && sign(inputY) != 0){
		return diagSpd;
	}
	return regularspeed;
}