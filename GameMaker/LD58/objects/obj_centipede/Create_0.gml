/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum STATES
{
	waiting,
	attacking,
	retreating,
}

state = STATES.waiting;
alarm[0] = 2 * game_get_speed(gamespeed_fps);
y_velocity = 0;
max_y_velocity = 3;

start_x = x;
start_y = y;

y_velocity = 3;

y = start_y + sprite_height;