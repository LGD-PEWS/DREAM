/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(status == 0){
	if(music_status == 0){
		audio_play_sound(snd_big_point,0,false);
	}else{
		audio_play_sound(snd_small_point,0,false);
	}
	if(music_status != 3){
		music_status++
	}else{
		music_status = 0;
	}
}

