/// @description Insert description here
// You can write your code in this editor

var _player = instance_find(obj_player, 0);

if (_player == noone) return;

var _distance = distance_to_object(_player);
var _x_delta = _player.x - x;

if (_x_delta != 0) image_xscale = sign(_x_delta);

direction = point_direction(x, y, _player.x, _player.y);

if (_distance < max_distance && !_player.hit && fly_time_microseconds < fly_cycle_microseconds / 2)
{
	if (sprite_index != spr_flyer_hit)
	{
		var _max_speed = min(max_speed, 2 * max_speed * (1.0 - _distance / max_distance));
		speed = min(_max_speed, speed + acceleration);
	}
	else
	{
		direction += 180;
		speed = 1;
	}
}
else
{
	if (sprite_index == spr_flyer_hit) direction += 180;
	speed = max(0, speed - acceleration);
}

fly_time_microseconds = (fly_time_microseconds + delta_time) % fly_cycle_microseconds;