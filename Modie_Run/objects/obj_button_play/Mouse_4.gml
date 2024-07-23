/// @description Go to next room

// This line of code inherits all behavior from the parent object. Subsequent modifications 
// are specific to this object
event_inherited();

//This starts the transition to the next room
transition_start(room_next(room), sq_fade_out, sq_fade_in);