/// @description Insert description here
// You can write your code in this editor

x += x_velocity;
y += y_velocity;

if (state == BIG_FLY_STATES.flying_down_left || state == BIG_FLY_STATES.flying_down_right)
{
	if (y > start_y) y = start_y;
}