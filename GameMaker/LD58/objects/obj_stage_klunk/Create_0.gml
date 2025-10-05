/// @description Insert description here
// You can write your code in this editor

controls_disabled = false;

move_direction = 0;
move_speed = 2;

y_acceleration = 0.275;
max_y_velocity = 4;
x_velocity = 0;
y_velocity = 0;
x_position = x;
y_position = y;
hit_velocity = 0;

jump_speed = -6;

attack_pressed = false;
attacking = false;

hit = false;
health = 5;
room_id = -1;

/// @brief Handles x-movement for the klunk.
function handle_x_movement()
{
	var _left_key = keyboard_check(vk_left);
	var _right_key = keyboard_check(vk_right);
	
	move_direction = _right_key - _left_key;

	x_velocity = move_direction * move_speed;
	
	if (hit)
	{
		move_direction = 0;
		x_velocity = hit_velocity;
	}

	if (move_direction != 0) image_xscale = sign(move_direction);
	
	if (!attacking && !hit)
	{
		if (move_direction != 0) sprite_index = spr_klunk_walking;
		else sprite_index = spr_klunk_idle;
	}
	
	if (controls_disabled) return;

	var _subpixel = 0.5;
	if (place_meeting(x_position + x_velocity, y_position, obj_stage_earth))
	{
		// scoot up to wall precisely
		var _pixel_check = _subpixel * sign(x_velocity);
		while (!place_meeting(x_position + _pixel_check, y_position, obj_stage_earth))
		{
			x_position += _pixel_check;
		}
	
		x_velocity = 0;
	}

	x_position += x_velocity;

	x = floor(x_position);
}

/// @brief Handles y-movement for klunk.
function handle_y_movement()
{
	var _jump_key_pressed = keyboard_check_pressed(ord("A"));

	y_velocity = min(max_y_velocity, y_velocity + y_acceleration);

	if (_jump_key_pressed && place_meeting(x, y + 1, obj_stage_earth) && !controls_disabled && !hit)
	{
		y_velocity = jump_speed;
	}

	var _subpixel = 0.5;
	if (place_meeting(x_position, y_position + y_velocity, obj_stage_earth))
	{
		var _pixel_check = _subpixel * sign(y_velocity);
		while (!place_meeting(x_position, y_position + _pixel_check, obj_stage_earth))
		{
			y_position += _pixel_check;
		}
	
		y_velocity = 0;
	}
	
	if (!attacking && !hit)
	{
		if (y_velocity > 0) sprite_index = spr_klunk_falling;
		if (y_velocity < 0) sprite_index = spr_klunk_jumping;
	}

	y_position += y_velocity;

	y = floor(y_position);
}

/// @brief Handling attack logic for klunk.
function handle_attack()
{
	if (controls_disabled) return;
	
	if (keyboard_check(ord("S")) && !attack_pressed)
	{
		if (sprite_index != spr_klunk_attacking)
		{
			sprite_index = spr_klunk_attacking;
			image_index = 0;
			instance_create_depth(x, y, depth - 1, obj_stage_klunk_attack);
		}
		attack_pressed = true;
		attacking = true;
	}
	else if (!keyboard_check(ord("S")) && attack_pressed)
	{
		attack_pressed = false;
	}
}