/// @description Insert description here
// You can write your code in this editor

x += x_velocity;

if (x < 240) x = 120;
if (x > 360) x = 360;

image_xscale = sign(x_velocity);