/// @description Initialize
team = 1;
hp = 1;

//initialize posession range specs and key input to possess other
possess_hold_delay= 15;
possess_range = 40;
possess_key = vk_enter;
possess_key2 = ord("E");
possess_key_held = 0;

//movement
spd = 10;
accel = 4;
frict = .3;

//Isdentify self to controller as "Player"
Update_Player_Instance(id);