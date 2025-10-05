// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_music_play(_sound_id, _loop_begin_time, _loop=true)
{
	if(is_string(_sound_id))
	{
		_sound_id = asset_get_index(_sound_id);
	}
	
	

	if (!audio_is_playing(_sound_id))
	{
		audio_stop_all();
		if(_sound_id == -1)
		{
			show_debug_message("ERROR: Failed to play music.");
			return;
		}
		
		obj_music.sound = audio_play_sound(_sound_id, 10, _loop);
		obj_music.played = false;
		obj_music.loop_begin_time = _loop_begin_time;
		obj_music.alarm[0] = obj_music.loop_begin_time * game_get_speed(gamespeed_fps);
	}
}
