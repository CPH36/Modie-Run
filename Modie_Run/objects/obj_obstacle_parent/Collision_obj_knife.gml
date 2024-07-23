/// @description Creates the debris

// In this IF we're checking the is_attacking of the object we're colliding with
if (other.is_attacking)
{
	// We call the function to create the debris
	create_debris(my_broken_sprite);
	
	// After creating the debris, this object destroys itself
	instance_destroy();
	
	// We call this function to add points in the score system
	add_points(points);
	
	// Play the explosion sound effect
	audio_play_sound(snd_explosion, 0, false);
	
	// Creates the explosion effect
	instance_create_depth(x, y, depth-1, obj_obstacle_explosion);
}