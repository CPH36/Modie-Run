/// @description Go to the menu

// This line of code inherits all behavior from the parent object. Subsequent modifications 
// are specific to this object
event_inherited();

//This starts the transition to the selected room
transition_start(next_level, sq_fade_out, sq_fade_in);