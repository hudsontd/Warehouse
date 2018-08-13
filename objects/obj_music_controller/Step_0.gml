/// @description choose music

if ( audio_sound_get_gain(snd_music_game) <= 0){
	audio_stop_sound(snd_music_game);
	game_playing = false;
}

if ( audio_sound_get_gain(snd_music_menu) <= 0){
	audio_stop_sound(snd_music_menu)
	menu_playing = false;
}

current_room = room_get_name(room);

//if we're in the main menu play that music
if( current_room == "rm_level" && game_playing == false){
	//if the menu music is playing fade it out
	if (audio_is_playing(snd_music_menu)){
		//fade out the other audio
		audio_sound_gain(snd_music_menu, 0, 200);
		//alarm[0] = 10;
	}
	//start gameplay music
	audio_play_sound(snd_music_game, 1000, true);
	//mute gameplay
	audio_sound_gain(snd_music_game, 0, 0);
	//fadein gameplay
	audio_sound_gain(snd_music_game, .75, 200);
	
	game_playing = true;
	
} else if ( menu_playing == false ){
	//if the menu music is playing fade it out
	if (audio_is_playing(snd_music_game)){
		//fade out the other audio
		audio_sound_gain(snd_music_game, 0, 200);
		//alarm[1] = 10;
		
	}
	//start menu music
	audio_play_sound(snd_music_menu, 1000, true);
	//mute menu
	audio_sound_gain(snd_music_menu, 0, 0);
	//fadein menu
	audio_sound_gain(snd_music_menu, .75, 200);
	
	menu_playing = true;
}

//check if either audio track has a volume of 0; 
//if it does stop it
/*if ( game_stop == true && audio_sound_get_gain(snd_music_game) <= 0){
	audio_stop_sound(snd_music_game);
	game_stop = false;
}

if ( menu_stop == true && audio_sound_get_gain(snd_music_menu) = 0.){
	game_stop = false;
}
*/


//we want the menu music everywhere except the game 
// & the studio screen