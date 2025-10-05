/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum BIG_FLY_STATES
{
	flying_down_left,
	flying_up_left,
	flying_down_right,
	flying_up_right,
	flying_left,
	flying_right,
}

state = BIG_FLY_STATES.flying_down_right;
start_x = x;
start_y = y;

y = -sprite_height;
image_xscale = -1;

x_velocity = 0;
y_velocity = 1;

alarm[0] = 4 * game_get_speed(gamespeed_fps);