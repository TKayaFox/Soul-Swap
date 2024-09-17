/// @description Initialize
var player_vessel=0;


///================================
//		      Pathing
///================================

gridConstant = 16;

//global.pathingCounter = 0;
//global.path = path_add();
global.grid = mp_grid_create(0,0,room_width/gridConstant,room_height/gridConstant,gridConstant,gridConstant);
mp_grid_add_instances(global.grid,oWall,true);

///================================
//			Mob Spawner
///================================
//Store array of mob objects to spawn   ADD NEW MOBS TO ARRAY HERE
spawn_mobs =[oSkeleton, oZombie];
num_mobs = array_length(spawn_mobs)-1; //array starts at 0
spawn_frequency = 7; //Maximum time between spawns
initial_spawn= 2;

//The spawn timer for the in seconds multiplied by the game speed
spawn_timer = 2 * game_get_speed(gamespeed_fps);

// Sets the time for the alarm that controls the pickups
var spawn_time = initial_spawn; //Always spawn first predictably to warn player
alarm_set(0,3);