// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Mob_AI(mobSpeed, diagnalPathing, target, avoidInstance){
	var grid = mp_grid_create(0,0,room_width/64,room_height/64,64,64);
	var path = path_add();
	mp_grid_add_instances(grid,avoidInstance,false);
	mp_grid_path(grid,path,x,y,target.x,target.y,diagnalPathing);
	path_start(path,mobSpeed,0,true);
}