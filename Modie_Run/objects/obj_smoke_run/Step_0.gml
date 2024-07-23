/// @description Shrinking the smoke

// Decrease the xscale by 0.1 at every game step
image_xscale -= 0.1;

// Sets the yscale to match the xscale
image_yscale = image_xscale;

// If the image_xscale is less or equal do zero, this object self-destructs
if (image_xscale <= 0)
{
	instance_destroy();
}