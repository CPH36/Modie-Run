/// @description ATTACK BUTTON

// This code only runs when the player is not dead
if (!obj_game_manager.chicken_dead)
{
	// The player can only attack when both conditions are met:
	// 1 - is_attacking is false (animation of the attack is not running)
	// 2 - the cooldown of the attack is less than or equal to 0
	if (!is_attacking && cooldown <= 0)
	{
		// Sets the variable is_attacking to true
		is_attacking = true;
		// Sets sprite_index to the attack animation of this weapon
		sprite_index = attack_animation;
		// With this code, we ensure the animation starts at the first frame
		image_index = 0;
		// Finally, we set the cooldown to the value defined in the variable definitions of this object
		cooldown = cooldown_knife;
		
		// Play the knife sound effect
		audio_play_sound(snd_knife, 0, false);
	}
}
