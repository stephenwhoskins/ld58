/// @description Insert description here
// You can write your code in this editor

if (alarm[0] == -1 && instance_find(obj_bug, 0) == noone)
{
	alarm[0] = 3 * game_get_speed(gamespeed_fps);
}