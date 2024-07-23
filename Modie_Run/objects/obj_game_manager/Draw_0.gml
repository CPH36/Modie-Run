/// @description Drawing the score

// We only want to draw the score in the levels, not in the menu
if(room != rm_menu)
{
	// Sets the font to fnt_text
	draw_set_font(fnt_text);
	
	// This line of code changes the color of the text to black
	draw_set_color(c_black);
	
	// We're drawing the level score at the x and y position defined in the variable definitions
	draw_text(score_x, score_y, string(points));
	
	// This line of code changes the color of the text back to white
	draw_set_color(c_white);
	
	// We're drawing the level score at the x plus 1 and y minus 1 position defined in the variable definitions
	draw_text(score_x+1, score_y-1, string(points));
}