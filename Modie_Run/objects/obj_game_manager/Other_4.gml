/// @description Resets time current

// At the start of each room, we reset the variable time_current to 0
time_current = 0;

// Sets the variable is_paused to false
is_paused = false;

// Restart the points to 0 at the start of every room
points = 0;

// Checks if we are at the room Menu
if(room == rm_menu)
{
	// If the menu music is not playing, play the music and set the loop 
	// parameter of this function to true
	if(!audio_is_playing(snd_music_menu))
	{
		// This line of code stops all playing music
		audio_stop_all();
		audio_play_sound(snd_music_menu, 10, true);
	}
}
else
{
	// If we are not in the menu, we want to play the level music
	// If the menu music is not playing, play the music and set the loop 
	// parameter of this function to true
	if(!audio_is_playing(snd_music_farm))
	{
		// This line of code stops all playing music
		audio_stop_all();
		audio_play_sound(snd_music_farm, 10, true);
	}
}