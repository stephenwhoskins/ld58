/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < instance_number(obj_world_map_path_point); ++_i)
{
	var _world_map_path_point = instance_find(obj_world_map_path_point, _i);
	
	if (_world_map_path_point.stage_id == global.stage_id)
	{
		x = _world_map_path_point.x;
		y = _world_map_path_point.y;
	}
}