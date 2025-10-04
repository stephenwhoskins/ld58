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