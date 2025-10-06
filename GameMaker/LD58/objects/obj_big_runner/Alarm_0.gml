/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case BIG_RUNNER_STATES.running:
	{
		state = BIG_RUNNER_STATES.observing_out;
		x_velocity = -1;
		alarm[0] = 6 * game_get_speed(gamespeed_fps);
		break;
	}
	case BIG_RUNNER_STATES.observing_out:
	{
		state = BIG_RUNNER_STATES.observing_back;
		x_velocity = 1;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
		break;
	}
	case BIG_RUNNER_STATES.observing_back:
	{
		state = BIG_RUNNER_STATES.running;
		x_velocity = -5;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
}