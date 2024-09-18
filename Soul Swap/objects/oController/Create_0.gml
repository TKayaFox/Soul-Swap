/// @description Initialize
var player_vessel=0;


gridConstant = 16;
global.grid = mp_grid_create(0,0,room_width/gridConstant,room_height/gridConstant,gridConstant,gridConstant);
mp_grid_add_instances(global.grid,oWall,true);