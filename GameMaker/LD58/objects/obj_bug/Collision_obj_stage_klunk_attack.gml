/// @description Insert description here
// You can write your code in this editor

if (sprite_index != hit_animation)
{
	sprite_index = hit_animation;
	hit_count++;
	
	// move bug away by some offset, but make sure he doesn't get stuck in a wall
	if (max_hit_offset != 0)
	{
		var _hit_offset = -sign(obj_stage_klunk.x - x) * max_hit_offset;
		if (object_index != obj_fly && object_index != obj_small_fly)
		{
			while (place_meeting(x + _hit_offset, y, obj_stage_earth))
			{
				_hit_offset += sign(obj_stage_klunk.x - x);
			}
		}
		x += _hit_offset * abs(x_velocity);
	}
	
	if (hit_count == max_hit_count)
	{
		instance_destroy();
		for (var _i = 0; _i < 16; ++_i)
		{
			var _x_velocity = random_range(-8, 8);
			var _y_velocity = random_range(-8, 8);
			var _sprite_index = spr_particle_2;
			if (irandom(1) == 1) _sprite_index = spr_particle_3;
			instance_create_depth(x, y, depth - 1, obj_particle, {x_velocity: _x_velocity, y_velocity: _y_velocity, sprite_index: _sprite_index});
		}
		for (var _i = 0; _i < 5; ++_i)
		{
			var _x_velocity = random_range(-4, 4);
			var _y_velocity = random_range(-4, 4);
			var _sprite_index = spr_particle_4;
			if (irandom(1) == 1) _sprite_index = spr_particle_5;
			instance_create_depth(x, y, depth - 1, obj_particle, {x_velocity: _x_velocity, y_velocity: _y_velocity, x_dampening: 0, y_dampening: 0, sprite_index: _sprite_index, max_life_microseconds: -1});
		}
	}
}