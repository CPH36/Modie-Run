///@description Player dies

///Check if player is not already dead
if (!obj_game_manager.chicken_dead)
{
	//Sets chicken_dead to true to avoid running this code again
	obj_game_manager.chicken_dead = true
	//Changes its knockback speed on the horizontal and vertical axis
	horizontal_speed = horizontal_knockback;
	vertical_speed = vertical_knockback;
	
	// Disable the layer speed for "Grass," "Fence," "Sand," and "SandMountain" if they exist
	// You can create new layers moving on some axis and call this function to stop these 
	// layers when the player dies
	disable_layer_hspeed("Grass");
	
	disable_layer_hspeed("Fence");
	
	disable_layer_hspeed("Sand");
	
	disable_layer_hspeed("SandMountain");
	
	// In this call, we're setting the alarm[0] on obj_game_manager to restart the room
	// You can change the number of seconds it takes to restart the level when the player dies
	with(obj_game_manager)
	{
		alarm[0] = room_speed * seconds_restart
	}
	
	// Destroys the weapon we are holding
	instance_destroy(obj_weapon_parent);
	
	// Play the hit sound effect
	audio_play_sound(snd_hit, 0, false);
}