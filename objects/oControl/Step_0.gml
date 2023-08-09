
if(current_time - frame_time - ms_per_frame/2 > ms_per_beat){
	//完美节拍
	music_status = 0
	frame_time += 500;
	//这回合还没进入过惩罚区
	first_time_in_publish = true;
}else

if(current_time - frame_time - ms_per_frame/2 <  ms_per_frame * left_deviation){
	//左误差
	music_status = 1
	//show_debug_message("左误差");
}else

if(current_time - frame_time - ms_per_frame/2 <  ms_per_frame * (left_deviation + punish_deviation)){
	//惩罚区
	music_status = 2
	//show_debug_message("惩罚区");
}else

if(current_time - frame_time - ms_per_frame/2 <  ms_per_frame * frame_per_beat){
	//右误差
	music_status = 3
	//show_debug_message("右误差");
}