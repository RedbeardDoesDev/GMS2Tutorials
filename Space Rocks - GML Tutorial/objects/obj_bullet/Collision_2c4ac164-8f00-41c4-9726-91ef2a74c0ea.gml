score += 10;

with(other)
{
	audio_play_sound(snd_die, 1, false);
	
	instance_destroy();
	
	if(sprite_index == spr_asteroid_large)
	{
		repeat(2)
		{
			var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAsteroid.sprite_index = spr_asteroid_medium;
		}
	}
	else if(sprite_index == spr_asteroid_medium)
	{
		repeat(2)
		{
			var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAsteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(10)
    {
		instance_create_layer(x, y, "Instances", obj_debris);
    }
}
