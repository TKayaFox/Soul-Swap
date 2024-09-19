/// @description Spawn objects at random intervals

//Randomly determine mob from array of mobs
mob = spawn_mobs[random_range(0,num_mobs)];

//set new spawn time
var spawn_time = random_range(2,spawn_frequency)* game_get_speed(gamespeed_fps);

// Creates pickup instance at generated coordinates
instance_create_layer(x, y, "Instances", mob);

// Generates random spawn time and resets alarm
alarm_set(0, spawn_time);