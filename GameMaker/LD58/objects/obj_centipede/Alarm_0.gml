/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case STATES.waiting:
	{
		state = STATES.attacking;
		y_velocity = -max_y_velocity;
		alarm[0] = 2 * game_get_speed(gamespeed_fps);
		break;
	}
	case STATES.attacking:
	{
		state = STATES.retreating;
		y_velocity = max_y_velocity;
		alarm[0] = 2 * game_get_speed(gamespeed_fps);
		break;
	}
	case STATES.retreating:
	{
		state = STATES.waiting;
		x = obj_stage_klunk.x;
		y_velocity = 0;
		alarm[0] = game_get_speed(gamespeed_fps);
		break;
	}
}