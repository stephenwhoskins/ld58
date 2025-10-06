/// @description Insert description here
// You can write your code in this editor


if (x + x_velocity > 175)
{
	x += x_velocity;
}
else
{
	x_velocity = -x_velocity;
}

if (state == BIG_RUNNER_STATES.observing_out)
{
	if (x < 360) x = 360;
}

image_xscale = sign(x_velocity);