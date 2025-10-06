/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum BIG_RUNNER_STATES
{
	running,
	observing_out,
	observing_back
}

state = BIG_RUNNER_STATES.observing_out;
x_velocity = -1;
alarm[0] = 6 * game_get_speed(gamespeed_fps);

if (!audio_is_playing(snd_music_boss)) audio_play_sound(snd_music_boss, 10, true);