/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(frequency/(img_num/2) == img_frame){
	img_status ++;
	image_index = img_status;
	if(img_status == 6){
		img_status = 0;
	}
	img_frame = 1;
}else{
	img_frame++
}

//在误差内
if((status == 1 || status == 3 || status == 0) && can_i_move){
	move();
}

//进入惩罚区
if(status == 2){
	if(move_wait_round > 0 && first_time_in_publish){
		move_wait_round --;
	}else if(move_wait_round == 0){
		can_move();
	}
	//如果按下了按键，就处罚
	punish();
	if(first_time_in_publish){
		first_time_in_publish = false;
	}
}