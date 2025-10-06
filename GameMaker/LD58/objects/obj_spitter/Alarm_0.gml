/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case SPITTER_STATES.rising_left:
	{
		state = SPITTER_STATES.spitting_left;
		var _spit = instance_create_depth(x, y, depth - 1, obj_spitter_spit);
		_spit.direction = 0;
		_spit.speed = 5;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPITTER_STATES.spitting_left:
	{
		state = SPITTER_STATES.lowering_left;
		y_velocity = 1;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPITTER_STATES.lowering_left:
	{
		state = SPITTER_STATES.rising_right;
		x = 448;
		image_xscale = -1;
		y_velocity = -1;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPITTER_STATES.rising_right:
	{
		state = SPITTER_STATES.spitting_right;
		var _spit = instance_create_depth(x, y, depth - 1, obj_spitter_spit);
		_spit.direction = 180;
		_spit.speed = 5;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPITTER_STATES.spitting_right:
	{
		state = SPITTER_STATES.lowering_right;
		y_velocity = 1;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
	case SPITTER_STATES.lowering_right:
	{
		state = SPITTER_STATES.rising_left;
		x = 32;
		image_xscale = 1;
		y_velocity = -1;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
}