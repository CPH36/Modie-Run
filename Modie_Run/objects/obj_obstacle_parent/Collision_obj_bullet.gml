/// @description Creates the debris

// We call the function to create the debris
create_debris(my_broken_sprite);

// After creating the debris, this object self-destructs along with the bullet
instance_destroy();

// We use 'other' in this function call to specify the destruction of the colliding object, 
// in this case, obj_bullet
instance_destroy(other);

// We call this function to add points in the score system
add_points(points);

// Play the explosion sound effect
audio_play_sound(snd_explosion, 0, false);

// Creates the explosion effect
instance_create_depth(x, y, depth-1, obj_obstacle_explosion);