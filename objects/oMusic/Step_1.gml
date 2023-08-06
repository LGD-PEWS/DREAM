/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(frequency == frame){
	if(states == 0){
		audio_play_sound(snd_big_point,0,false);
	}else{
		audio_play_sound(snd_small_point,0,false);
	}
	if(states != 3){
		states++
	}else{
		states = 0;
	}
	frame = 1;
}else{
	frame++
}
