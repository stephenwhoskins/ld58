/// @description Insert description here
// You can write your code in this editor

var _player_instance = instance_find(obj_stage_klunk, 0);

if (_player_instance != noone)
{
	var _view_width = camera_get_view_width(view_camera[0]);
	var _view_height = camera_get_view_height(view_camera[0]);
	x = floor(lerp(x, _player_instance.x, move_speed));
	y = floor(lerp(y, _player_instance.y, move_speed));
	var _clamp_x = clamp(x - _view_width / 2, 0, room_width - _view_width);
	var _clamp_y = clamp(y - _view_height / 2, 0, room_height - _view_height);

	camera_set_view_pos(view_camera[0], _clamp_x, _clamp_y);
}