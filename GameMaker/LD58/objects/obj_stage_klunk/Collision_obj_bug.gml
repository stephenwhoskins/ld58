/// @description Insert description here
// You can write your code in this editor

if (hurt_count == max_hurt_count)
{
	hurt_count = 0;
	sprite_index = spr_klunk_hit;
	hit = true;
	attacking = false; // in case was hit before finished attacking
	hit_velocity = sign(x - other.x);
	health--;
	if (health == 0) y_velocity = jump_speed;
}