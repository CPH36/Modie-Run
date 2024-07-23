/// @description drawing both the windmill and the fan

// With this code, we draw the object's sprite
draw_self();

// We draw the windmill fan in front of the object using the code below the draw_self function
// We use draw_sprite_ext to apply the rotation we're consistently adding, drawing the
// fan rotating every single step of the game.
draw_sprite_ext(spr_windmillfan, 0, x, y, image_xscale, image_yscale, rotation, image_blend, image_alpha);