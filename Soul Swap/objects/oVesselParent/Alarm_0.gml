/// @description Pathing
if(isPathing){

//get player instance id from controller
target = oController.player_vessel;

//Make sure target actually exists
if (instance_exists(target))
{
	//Path to Target
	path_delete(path);
	path = path_add();
	mp_grid_path(global.grid,path,x,y,target.x + xOffset,target.y + yOffset,diagonalPathing);
	path_start(path,enemySpd,0,false);
	alarm_set(0,pathingUpdateWait);
}
}