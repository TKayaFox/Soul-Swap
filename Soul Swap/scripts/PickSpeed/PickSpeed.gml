/// @description Picks between diagonal or regualr speed
function PickSpeed(regularspeed, diagonalspeed){
	if(sign(inputX) != 0 && sign(inputY) != 0){
		return diagonalspeed;
	}
	return regularspeed;
}