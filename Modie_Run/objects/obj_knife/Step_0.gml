/// @description Managing the cooldown

// If the cooldown is greater than 0 we decrease this value by 1 each step of the game
if (cooldown > 0)
{
	cooldown -= 1;
}