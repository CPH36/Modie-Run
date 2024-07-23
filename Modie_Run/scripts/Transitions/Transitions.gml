global.room_target = -1;
global.mid_transition = false;

//Called whenever you want to go from one room to another, using any combination of in/out sequences
function transition_start(_room_target, _type_out, _type_in)
{
	// This line checks if it's still in transition, if not then it proceeds
	if (!global.mid_transition)
	{
		// Sets mid transition to true
		global.mid_transition = true
		// Sets room target to the one called at the function
		global.room_target = _room_target;
		// Sets the transition sequence to the type out
		transition_place_sequence(_type_out);
		// Sets the target room to the one at the function call
		layer_set_target_room(_room_target);
		// Sets the transition sequence to the type in
		transition_place_sequence(_type_in);
		// Resets the target room and return true
		layer_reset_target_room();
		return true;
	}
	else
	{
		// Returns false if it's still at the mid of a transition
		return false;
	}
}

//Places the sequences in the room
function transition_place_sequence(_type)
{
	// If the layer named Transition exists, destroys it
	if (layer_exists("Transition"))
	{
		layer_destroy("Transition")
	}
	
	// Creates the layer Transition at the depth -9999 and returns it's ID
	var _layer = layer_create(-9999,"Transition");
	// Creates a sequence at the position x = 0 and y = 0 of the given type of the sequence
	layer_sequence_create(_layer,0,0,_type);	
}

//Called as a moment at the end of an "Out" transition sequence
function transition_change_room()
{
	room_goto(global.room_target);
}

//Called as a moment at the end of an "In" transition sequence
function transition_finished()
{
	// Destroys the sequence
	layer_sequence_destroy(self.elementID);
	// Sets the global variable mid_transition to false, so we can create another transition
	global.mid_transition = false;
}