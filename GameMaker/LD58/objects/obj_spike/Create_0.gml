/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum SPIKE_STATES
{
	walking_left,
	walking_right,
	spiking_left,
	spiking_right,
}

state = SPIKE_STATES.walking_left;
x_velocity = -1;
alarm[0] = 4 * game_get_speed(gamespeed_fps);