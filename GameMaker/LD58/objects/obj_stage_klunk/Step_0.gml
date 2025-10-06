/// @description Insert description here
// You can write your code in this editor

if (health <= 0)
{
	sprite_index = spr_klunk_hit;
	y_velocity = min(max_y_velocity, y_velocity + y_acceleration);
	y_position += y_velocity;
	y = floor(y_position);
	return;
}

handle_x_movement();
handle_y_movement();
handle_attack();

if (sprite_index == spr_klunk_walking && !audio_is_playing(snd_sfx_walking))
{
	audio_play_sound(snd_sfx_walking, 10, true);
}
else if (sprite_index != spr_klunk_walking && audio_is_playing(snd_sfx_walking))
{
	audio_stop_sound(snd_sfx_walking);
}

hurt_count = min(hurt_count + 1, max_hurt_count);