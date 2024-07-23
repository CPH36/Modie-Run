///@description Creating the weapon

// Ensures the player is not carrying more than 1 weapon
// If there's another weapon in the game, we destroy and create the new weapon
instance_destroy(obj_weapon_parent);

// We create the weapon at the depth of the player object minus 5, placing it in front of the player
instance_create_depth(x,y,other.depth-5,weapon);

// After creating the weapon, this object self-destructs
instance_destroy();

// Play the pickup sound effect
audio_play_sound(snd_pickup, 0, false);