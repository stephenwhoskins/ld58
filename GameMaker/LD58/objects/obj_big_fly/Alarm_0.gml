/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case BIG_FLY_STATES.flying_down_right:
	{
		state = BIG_FLY_STATES.flying_up_right;
		x_velocity = 0;
		y_velocity = -1;
		alarm[0] = 2 * game_get_speed(gamespeed_fps);
		break;
	}
	case BIG_FLY_STATES.flying_up_right:
	{
		state = BIG_FLY_STATES.flying_left;
		x = room_width + abs(sprite_width);
		y = obj_stage_klunk.y;
		x_velocity = -5;
		y_velocity = 0;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
	case BIG_FLY_STATES.flying_left:
	{
		state = BIG_FLY_STATES.flying_down_left;
		image_xscale = 1;
		x = 120;
		y = -sprite_height;
		x_velocity = 0;
		y_velocity = 1;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
		break;
	}
	case BIG_FLY_STATES.flying_down_left:
	{
		state = BIG_FLY_STATES.flying_up_left;
		x_velocity = 0;
		y_velocity = -1;
		alarm[0] = 2 * game_get_speed(gamespeed_fps);
		break;
	}
	case BIG_FLY_STATES.flying_up_left:
	{
		state = BIG_FLY_STATES.flying_right;
		x = -sprite_width;
		y = obj_stage_klunk.y;
		x_velocity = 5;
		y_velocity = 0;
		alarm[0] = 3 * game_get_speed(gamespeed_fps);
		break;
	}
	case BIG_FLY_STATES.flying_right:
	{
		state = BIG_FLY_STATES.flying_down_right;
		image_xscale = -1;
		x = 360;
		y = -sprite_height;
		x_velocity = 0;
		y_velocity = 1;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
		break;
	}
}