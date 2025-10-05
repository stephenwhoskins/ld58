/// @description Insert description here
// You can write your code in this editor

if (!keyboard_check(vk_up) && !keyboard_check(vk_down) && !keyboard_check(vk_left) && !keyboard_check(vk_right) && !keyboard_check(vk_enter))
{
	key_pressed = false;
}

if (path_index == -1)
{
	if (keyboard_check(vk_up) && up_path != -1 && !key_pressed)
	{
		path_start(up_path, move_speed, path_action_stop, true);
	}
	else if (keyboard_check(vk_down) && down_path != -1 && !key_pressed)
	{
		path_start(down_path, move_speed, path_action_stop, true);
	}

	if (keyboard_check(vk_left) && left_path != -1 && !key_pressed)
	{
		path_start(left_path, move_speed, path_action_stop, true);
		image_xscale = -1;
	}
	else if (keyboard_check(vk_right) && right_path != -1 && !key_pressed)
	{
		path_start(right_path, move_speed, path_action_stop, true);
		image_xscale = 1;
	}
	
	if (keyboard_check(vk_enter) && !key_pressed)
	{
		obj_transition_pixelate_out.room_id = global.room_id;
	}
}
else
{
	key_pressed = true;
}