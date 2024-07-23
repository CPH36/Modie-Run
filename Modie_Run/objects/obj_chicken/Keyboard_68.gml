/// @description MOVE RIGHT

//If the player is not dead, you can move.
if (!obj_game_manager.chicken_dead)
{
	horizontal_speed = move_speed;
	
	// If the smoke_cooldown is less than or equal to zero and we are in the ground, 
	// create a smoke run effect and set the cooldown back to the value defined in the variable definitions
	if(smoke_cooldown <= 0 && check_collision(obj_solid)){
		instance_create_depth(x,y,depth+1, obj_smoke_run);
		smoke_cooldown = smoke_cooldown_max;
	}
}