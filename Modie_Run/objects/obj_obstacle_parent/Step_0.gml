/// @description Movement

// Check if X is less than -400; if true, destroy the object
if (x < -400) 
{
	instance_destroy();
}

// If the player is dead, the windmill stops moving, so we set the hspeed back to 0
if (obj_game_manager.chicken_dead)
{
	hspeed = 0;
}