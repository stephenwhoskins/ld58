/// @description Insert description here
// You can write your code in this editor

y_velocity = min(max_y_velocity, y_velocity + y_acceleration);

if (place_meeting(x + x_velocity, y, obj_stage_earth))
{
	var _subpixel = 0.5 * sign(x_velocity);
	while (!place_meeting(x + _subpixel, y, obj_stage_earth))
	{
		x += _subpixel;
	}
	
	x_velocity = -x_dampening * x_velocity;
}
else
{
	x += x_velocity;
}

if (place_meeting(x, y + y_velocity, obj_stage_earth))
{
	var _subpixel = 0.5 * sign(y_velocity);
	while (!place_meeting(x, y + _subpixel, obj_stage_earth))
	{
		y += _subpixel;
	}
	
	y_velocity = -y_dampening * y_velocity;
}
else
{
	y += y_velocity;
}

if (max_life_microseconds != -1)
{
	life_microseconds = min(max_life_microseconds, life_microseconds + delta_time);

	if (life_microseconds == max_life_microseconds) instance_destroy();
}