///@description Movement

// With this code we make the gun to follow the player's position on both X and Y axes
x = obj_chicken.x + 6;
y = obj_chicken.y - 16;

// With this code, we make the gun to follow the mouse angle
image_angle = point_direction(x,y,mouse_x,mouse_y);