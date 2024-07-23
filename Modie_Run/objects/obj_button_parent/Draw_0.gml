/// @description Draw text

// In this line of code, we're setting a value that ranges from -5 to 5 in 0.2 seconds
// This creates the illusion that the button is rotating from left to right over time
// We store this value in the _rotation variable for later use
var _rotation = wave(-2.5,2.5,0.2,0);

// Sets the image_angle of the button to the _rotation variable defined above
image_angle = _rotation;

// We use the draw_self function that does what the Draw event was supposed to do 
// In this case, it draws the button sprite
draw_self();

// Sets the font to fnt_text
draw_set_font(fnt_text);

// Sets the horizontal alignment to center
draw_set_halign(fa_center);

// Sets the vertical alignment to middle
draw_set_valign(fa_middle);

// We use the draw_text_transformed function, utilizing the _rotation variable to 
// align the text angle with the button sprite
draw_text_transformed(x,y,text, 1, 1, _rotation);

// Now we reset the horizontal alignment to the default
draw_set_halign(fa_left);

// Now we reset the vertical alignment to the default
draw_set_valign(fa_top);