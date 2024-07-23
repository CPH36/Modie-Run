/// @description Pause system

// We can pause only when not in the menu and not dead
if (room != rm_menu && !chicken_dead)
{
	// This line of code calls the game_pause function
	game_pause();
}