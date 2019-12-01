instance_destroy();

lives -= 1;

audio_play_sound(snd_die, 1, false);

with (obj_game)
{
	alarm[1] = room_speed;
}
