/// @description choose music

current_room = room_get_name(room);

//if we're in the main menu play that music
if( current_room == "rm_level" && (audio_is_playing(snd_music_game) == false)){
	audio_play_sound(snd_music_game, 1000, true);
	
	if(audio_is_playing(snd_music_menu)){
		audio_stop_sound(snd_music_menu);		
	}
	
} else if (audio_is_playing(snd_music_menu) == false && current_room != "rm_level"){
	audio_play_sound(snd_music_menu, 1000, true);
	
	if(audio_is_playing(snd_music_game)){
		audio_stop_sound(snd_music_game);		
	}
}
