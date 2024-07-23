///@description JUMP BUTTON

//If the player is on the ground and is not dead, then they can jump.
if (check_collision(obj_solid) and !obj_game_manager.chicken_dead)
{
	// Here, we set the vertical speed to the jump_force as defined in the variable definitions.
	vertical_speed = jump_force;
	// Here, we stop the animation during jumps.
	image_speed = 0;
	
	// Play the jump sound effect
	audio_play_sound(snd_jump, 0, false);
}