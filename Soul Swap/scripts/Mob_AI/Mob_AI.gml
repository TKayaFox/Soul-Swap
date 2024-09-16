// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Mob_AI(mobSpeed, diagnalPathing, target, updateWaitTime){	
	
	if(global.pathingCounter == updateWaitTime){
		//Deletes old path
		path_delete(global.path);
		//Makes new path
		global.path = path_add();
		mp_grid_path(global.grid,global.path,x,y,target.x,target.y,diagnalPathing);
		//Start path
		path_start(global.path,mobSpeed,0,true);
		global.pathingCounter = 0;
	}else{
		global.pathingCounter++;
	}	
}