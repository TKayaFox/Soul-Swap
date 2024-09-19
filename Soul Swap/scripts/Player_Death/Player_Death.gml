//Game over on player death
function Player_Death(){
	highscore_clear();
	highscore_add("*Name*'s Score: ", global.PlayerScore);
	//global.PlayerScore = 0;
	room_goto(rmLose);
}