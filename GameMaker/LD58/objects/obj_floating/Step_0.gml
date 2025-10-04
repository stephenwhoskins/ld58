/// @description Insert description here
// You can write your code in this editor

x = anchor_x;
y = anchor_y + float_amplitude_pixels * cos(2 * pi * float_time_microseconds / float_period_microseconds);

float_time_microseconds = (float_time_microseconds + delta_time) % float_period_microseconds;