/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
show_debug_message(can_i_move)
if(frequency == frame ){
		frame = 1;
}else{
	frame++
}

//if(frequency == cant_move_frame ){
//		can_move();
//}else{
//	cant_move_frame++
//}

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

if((frequency > (frame - left_deviation)) && (frequency < (frame + right_deviation)) && can_i_move ){
//if(frequency == frame){
	//on_point();
	if(keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))){
	//蓄力
	states ++;
	//切换动画
	switch (states) {
	    case 1:
	        sprite_index = spr_player_down;
	        break;
		case 2:
	        sprite_index = spr_player_down;
	        break;
		case 3:
	        sprite_index = spr_player_down;
	        break;
		case 4:
	        sprite_index = spr_player_down;
	        break;
		case 5:
			sprite_index = spr_player_down;
	        //sprite_index = spr_player_idle;
			//蓄力清零
			states = 0;
	        break;
	    default:
			sprite_index = spr_player_down;
	        break;
	}
	//动画第一帧
	//image_index = 0;
}

if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(ord("A"))){
	//切换动画
	sprite_index = spr_player_idle;
	//动画第一帧
	//image_index = 0;
	//蓄力清零
	states = 0;
	//移动位置
	x -= 32;
}

if(keyboard_check_pressed(vk_right)||keyboard_check_pressed(ord("D"))){
	//切换动画
	sprite_index = spr_player_idle;
	//动画第一帧
	//image_index = 0;
	//蓄力清零
	states = 0;
	//移动位置
	x += 32;
}


}


if(
	keyboard_check_pressed(vk_up)||
	keyboard_check_pressed(vk_down)||
	keyboard_check_pressed(vk_left)||
	keyboard_check_pressed(vk_right)||
	keyboard_check_pressed(ord("W"))||
	keyboard_check_pressed(ord("S"))||
	keyboard_check_pressed(ord("A"))||
	keyboard_check_pressed(ord("D"))
){
	cant_move();
}




