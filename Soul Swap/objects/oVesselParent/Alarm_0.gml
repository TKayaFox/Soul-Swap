/// @description Pathing

//get player instance id from controller
target = oController.player_vessel;
	
//Path to Target
path_delete(path);
path = path_add();
mp_grid_path(global.grid,path,x,y,target.x,target.y,diagonalPathing);
path_start(path,enemySpd,0,true);
alarm_set(0,pathingUpdateWait);