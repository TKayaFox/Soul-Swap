/// @description Initialize

// Inherit the parent event
event_inherited();

//set ghost as plaer possessed. At this stage, the player is the only one able to be a ghost
player_possessed = true;
possess_hold_delay= 5;
possess_range = 10;
possess_key = vk_enter;
possess_key_held = 0;