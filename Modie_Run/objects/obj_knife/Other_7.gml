/// @description Reseting the attack

// This code is only used when we are using the spr_knife_attack sprite and it's animation ends
if (sprite_index == spr_knife_attack)
{
	// Set the is_attacking to false, allowing the player to attack again
	is_attacking = false;
	
	// Sets the sprite index back to the original weapon sprite
	sprite_index = spr_knife;
}