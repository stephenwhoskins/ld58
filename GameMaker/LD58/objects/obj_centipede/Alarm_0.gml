/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case STATES.waiting:
	{
		state = STATES.attacking;
		for (var _i = 0; _i < 16; ++_i)
		{
			show_debug_message("hello?");
			var _x_velocity = random_range(-4, 4);
			var _y_velocity = random_range(-4, -8);
			var _sprite_index = spr_particle_2;
			if (irandom(1) == 1) _sprite_index = spr_particle_3;
			instance_create_layer(x, start_y + sprite_height / 2 - 4, "Instances_Klunk", obj_particle, {x_velocity: _x_velocity, y_velocity: _y_velocity, x_dampening: 0, y_dampening: 0, sprite_index: _sprite_index, max_life_microseconds: -1});
		}
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
		instance_create_depth(x, start_y + sprite_height / 2, depth - 1, obj_centipede_dust);
		y_velocity = 0;
		alarm[0] = 0.5 * game_get_speed(gamespeed_fps);
		break;
	}
}