/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case SPIKE_STATES.walking_left:
	{
		state = SPIKE_STATES.spiking_left;
		sprite_index = spr_spike_spiking;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPIKE_STATES.spiking_left:
	{
		state = SPIKE_STATES.walking_right;
		x_velocity = 1;
		sprite_index = spr_spike_walking;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPIKE_STATES.walking_right:
	{
		state = SPIKE_STATES.spiking_right;
		sprite_index = spr_spike_spiking;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPIKE_STATES.spiking_right:
	{
		state = SPIKE_STATES.walking_left;
		x_velocity = -1;
		sprite_index = spr_spike_walking;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
		break;
	}
}