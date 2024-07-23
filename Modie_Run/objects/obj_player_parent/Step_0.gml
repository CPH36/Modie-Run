/// @description Player movement

/// Checks if there's collision with the obj_solid
if (check_collision(obj_solid))
{
	/// If there's a collision, then the player runs its walking animation
	image_speed = 1;
} 
else
{
	/// If not, it stops the animation while the player is jumping
	image_speed = 0;
	//and resets the animation to the first frame
	image_index = 0;
	
	//While there's no collision with the ground, we add the gravity for the player to fall
	vertical_speed += grav;
}


///Vertical collision
if (!obj_game_manager.chicken_dead)
{
	// This checks for an object collision at the new position, where the instance is going to move
	// We get the new position by adding vertical_speed to the instance's Y value
	if (place_meeting(x,y+vertical_speed,obj_solid))
	{
		// While we're still not precisely colliding with the obj_solid, we add 1 to the Y-axis
		while (!place_meeting(x,y+sign(vertical_speed),obj_solid))
		{
			// We're using the sign value here, so we can get the value 1 if it is a positive or a negative
			// value, in this demo we're not making a collision with the head of the player, but this code
			// can also cover these type of collision as well
			y += sign(vertical_speed);
		}
		
		// After checking all the collision, we set the vertical_speed back to 0
		vertical_speed = 0;
		
		// Creates the instance of the smoke effect when player hits the ground
		instance_create_depth(x,y,depth+1,obj_smoke_fall);
	}
}

/// We apply our vertical_speed to the object's Y value
y += vertical_speed;

/// We apply our horizontal_speed to the object's X value
x += horizontal_speed;

/// This code prevents the player from moving away from the screen
x = clamp(x,10,room_width-10);

//If the player is dead, we add the dead_degrees to the image_angle of the object
if (obj_game_manager.chicken_dead)
{
	image_angle += dead_degrees;
}

// If we set the smoke_cooldown is greater than zero, we decrease its value 
if(smoke_cooldown > 0)
{
	smoke_cooldown--;
}