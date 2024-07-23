/// @description Goes to the next Level

// We store in the variable the next room based on the current room
var _room = room_next(room);

// If we are in the last room, 
if(!room_exists(_room))
{
	_room = rm_menu;
}

//This starts the transition to the next room
transition_start(_room, sq_fade_out, sq_fade_in);