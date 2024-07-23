/// @description Movement

// We're calling this function to make the object "wrap" the room horizontally,
// considering the sprite width as the margin
move_wrap(true, false, sprite_width);

// If the player is dead, the windmill stops moving, so we set the hspeed back to 0
if (obj_game_manager.chicken_dead)
{
	hspeed = 0;
}

// At every step of the game, we increment our rotation by 2 degrees
rotation += 2;