// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement(left, right, up, down, hsp, vsp, movespeed){
	var move_left = -left;
	var move_right = right;
	var move_up = -up;
	var move_down = down;
	
	//get movement vectors from any directional input
	hsp = (move_left + move_right) * movespeed;
	vsp = (move_up + move_down) * movespeed;

	//Move Player as needed
	x += hsp
	y += vsp
}