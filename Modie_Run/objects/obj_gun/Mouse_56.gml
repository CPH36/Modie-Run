/// @description SHOOT BUTTON

//Only allows the player to shoot when the variable shooting is false
if (!shooting)
{
	// Sets the shooting variable to true, preventing the player from shooting 
	// until the condition for it is available again
	shooting = true;
	// By setting the image_speed to 1, we're running the sprites animation
	image_speed = 1;
	
	// We're making sure the animation starts at the first frame when shooting
	image_index = 0;
	
	// Here, we create an instance of obj_bullet and save its id in the _bullet variable for later use
	var _bullet = instance_create_depth(x,y,depth,obj_bullet);
	
	with(_bullet)
	{
		// In this code we're setting the movement of the bullet. When we call this function
		// we're setting the native speed and direction of the object.
		// So in this case, we're telling this object to move in the direction of our mouse at the speed
		// we've set in the variable definitions
		move_towards_point(mouse_x, mouse_y, other.bullet_speed);
	}
	
	// Play the shoot sound effect
	audio_play_sound(snd_shoot, 0, false);
}