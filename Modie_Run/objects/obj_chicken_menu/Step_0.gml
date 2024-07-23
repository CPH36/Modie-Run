
// This line of code makes the chicken to move along the Y-axis from ystart (its initial Y position) minus y_interval to the ystart plus y_interval
// The entire movement occurs in the seconds defined in the variable definitions
y = wave(ystart-y_interval,ystart+y_interval,seconds_y,0);

// If the x position is greater than half of the room width, it will perform the code bellow
if (x > room_width/2)
{
	// The image angle will move from the angle_interval to minus the angle_interval in the seconds we defined in the variable definitions
	image_angle = wave(angle_interval,-angle_interval,seconds_angle,0);
	// And will move in the X-axis from xstart minus the x_interval to xstart plus the x_interval
	x = wave(xstart-x_interval,xstart+x_interval,seconds_x,0);
}
else
{
	// If the position is less than half of the room width, we'll do the moviment in the oposite direction
	
	// The image angle will move from minus the angle_interval to the angle_interval in the seconds we defined in the variable definitions
	image_angle = wave(-angle_interval,angle_interval,seconds_angle,0);
	// And will move in the X-axis from xstart plus the x_interval to xstart minus the x_interval
	x = wave(xstart+x_interval,xstart-x_interval,seconds_x,0);
}