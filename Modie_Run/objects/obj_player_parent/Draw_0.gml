/// @description Rotating the chicken

// In this line of code, we're setting a value that ranges from -5 to 5 in 0.02 seconds
// This creates the illusion that the chicken is rotating from left to right over time
// We store this value in the _rotation variable for later use
var _rotation = wave(-5,5,0.02,0);

// If the chicken is not dead, we rotate the player sprite
if (!obj_game_manager.chicken_dead)
{
	// In this function call, we override the draw function to draw the sprite rotating
	// using the angle stored in the _rotation variable.
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_rotation,image_blend,image_alpha);
}
else
{
	// If the chicken is dead, we use the draw_self function that does what the Draw event was supposed to do
	draw_self();
}
