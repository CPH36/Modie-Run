/// @description Movement

/// We completely override the step event for the bird obstacle to prevent it from
/// stopping when the player dies

// Check if X is less than -400; if true, destroy the object
if (x < -400)
{
	instance_destroy();
}

/// If move_y is set to true in the variable definitions, we make the bird fly in the Y-axis
if(move_y)
{
	// This line of code makes the bird fly along the Y-axis from ystart (its initial Y position)
	// The entire movement occurs in 0.05 seconds in this example
	y = wave(ystart, ystart+length_y, 0.05);
}