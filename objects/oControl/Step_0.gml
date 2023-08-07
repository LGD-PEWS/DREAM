
if(current_time - frame_time - ms_per_frame/2 < ms_per_beat &&
	current_time - frame_time + ms_per_frame/2 > ms_per_beat){
	//完美节拍
	music_status = 0
	frame_time += 500;
	show_debug_message(frame_time);
}