//音乐节拍
if(current_time - frame_time - ms_per_frame/2 > ms_per_beat){
	//完美节拍
	status = 0
	frame_time += ms_per_beat;
	//这回合还没进入过惩罚区
	first_time_in_publish = true;
	//图片大小循环
	img_circulate = !img_circulate
}else

if(current_time - frame_time - ms_per_frame/2 <  ms_per_frame * left_deviation){
	//左误差
	status = 1
	//show_debug_message("左误差");
}else

if(current_time - frame_time - ms_per_frame/2 <  ms_per_frame * (left_deviation + punish_deviation)){
	//惩罚区
	status = 2
	//show_debug_message("惩罚区");
}else

if(current_time - frame_time - ms_per_frame/2 <  ms_per_frame * frame_per_beat){
	//右误差
	status = 3
	//show_debug_message("右误差");
}

//画面节拍
if(status == 0 || current_time - frame_time - ms_per_frame/2 <  ms_per_frame * frame_per_img){
	//图片1
	if(img_circulate)
		img_status = 1;
	else  
		img_status = 4;
	show_debug_message(img_status);
}
else if(current_time - frame_time - ms_per_frame/2 <  ms_per_frame * frame_per_img * 2){
	//图片2
	if(img_circulate)
		img_status = 2;
	else  
		img_status = 5;
	show_debug_message(img_status);
}else{
	//图片3
	if(img_circulate)
		img_status = 3;
	else  
		img_status = 6;
	show_debug_message(img_status);
}
