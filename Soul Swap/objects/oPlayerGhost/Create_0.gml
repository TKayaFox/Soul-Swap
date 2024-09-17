/// @description Initialize

//initialize posession range specs and key input to possess other
possess_hold_delay= 50;
possess_range = 100;
possess_key = vk_enter;
possess_key_held = 0;

//movement
spd = 10;
accel = 4;
frict = .3;

//Isdentify self to controller as "Player"
oController.player_vessel=id;