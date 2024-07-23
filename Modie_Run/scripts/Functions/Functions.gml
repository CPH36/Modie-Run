/// @description wave(from, to, duration, offset)
/// @param from
/// @param  to
/// @param  duration
/// @param  offset
function wave(_from, _to, _duration, _offsset = 0) 
{
	// Returns a value that will wave back and forth between [from-to] over [duration] seconds
	// Examples
	//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
	//      x = Wave(-10,10,0.25,0)         -> move left and right quickly
 
	// Or here is a fun one! Make an object be all squishy!! ^u^
	//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
	//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)
	
    
	var _value = (_to - _from) * 0.5;
	return _from + _value + sin((((obj_game_manager.time_current * 0.001) + _duration * _offsset) / _duration) * (pi*2)) * _value;
}


// This function checks if the instance is colliding with an object, at the current
// position + 1 at the y axis.
// The function returns true if a collision was found, or false if a collision was not found.
function check_collision(_obj_collision)
{
	return place_meeting(x,y+1,_obj_collision);
}

// This function checks if the layer exists, and then sets the layer speed to 0
function disable_layer_hspeed(_layer_name)
{
	if(layer_exists(layer_get_id(_layer_name)))
	{
		layer_hspeed(layer_get_id(_layer_name), 0);
	}
}

// When the obstacle is destroyed, we create the some broken pieces to create some "particles"
// In this for loop we begin at the position 0 and we go all the way to the total amount of frames our sprite has
function create_debris(_broken_sprite)
{
	for (var _i=0; _i < sprite_get_number(_broken_sprite); _i++)
	{
		// We create an instance of the object obj_break and store it's id into the _break variable
		var _break=instance_create_depth(x,y,depth-1,obj_break);
		// In this line we're assingning the sprite index to our sprite defined in the variable definition
		_break.sprite_index = _broken_sprite;
		// We're setting the sprite to the variable _i that in every iteration of this loop increases by 1 it's value
		// So in the default sprite we're using, the value of _i goes from 0 to 5
		_break.image_index = _i;
		// We set to the vspeed a value that ranges from -3 to -5
		_break.vspeed = irandom_range(-3,-5);
		// We set to the hspeed a value that ranges from -3 to +3
		_break.hspeed = irandom_range(-3,+3);
	}
}

// We create this function outside of obj_game_manager to access it from other objects, such as obj_button_menu
function game_pause()
{
	// This line of code toggles the boolean value, functioning as a switch to turn it on and off
	obj_game_manager.is_paused = !obj_game_manager.is_paused;
	
	// If is_paused is true, we proceed with the pause system
	if(obj_game_manager.is_paused)
	{
		// In this line of code, we deactivate all other objects; the 'true' parameter means we are not 
		// deactivating ourselves
		instance_deactivate_all(true);
		
		// If the layer named PauseMenu exists, destroys it
		if (layer_exists("PauseMenu"))
		{
			layer_destroy("PauseMenu");
		}
	
		// Creates the layer PauseMenu at the depth -9999 and returns it's ID
		var _layer = layer_create(-999,"PauseMenu");
		// Creates a sequence at the position x = 0 and y = 0 of the given type of the sequence
		layer_sequence_create(_layer,0,0,sq_pause_screen);
		
		// Now we create two buttons, one for resuming the game (which can also be triggered with the 
		// ESC button) and another for returning to the menu
		instance_create_depth(room_width/2, 176, -9998, obj_button_resume);
		instance_create_depth(room_width/2, 224, -9998, obj_button_menu);
		
	}
	else
	{
		// If the layer named PauseMenu exists, destroys it
		if (layer_exists("PauseMenu"))
		{
			layer_destroy("PauseMenu");
		}
		
		// This line of code destroys all buttons
		with(obj_button_parent)
		{
			instance_destroy();
		}
		
		// Finally, we activate all objects
		instance_activate_all();
	}
}


// This function is designed to add points at any time in the game 
// You can create your own objects and use this function to increment the scores in your levels
function add_points(_points){
	// In this code, we add the received _points when an object calls this function to our current score
	with(obj_game_manager)
	{
		points += _points;
	}
}