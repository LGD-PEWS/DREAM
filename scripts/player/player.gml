// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377

//可以移动
function can_move(){
	can_i_move = true;
}
//不可以移动
function cant_move(){
	can_i_move = false;
}
function up_pressed(){
	if(keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))) return true;
}
function down_pressed(){
	if(keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))) return true;
}
function left_pressed(){
	if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(ord("A"))) return true;
}
function right_pressed(){
	if(keyboard_check_pressed(vk_right)||keyboard_check_pressed(ord("D"))) return true;
}
//移动
function move(){
	if(down_pressed()){
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
	//这回合不准移动
	cant_move();
}

if(left_pressed()){
	//切换动画
	sprite_index = spr_player_idle;
	//动画第一帧
	//image_index = 0;
	//蓄力清零
	states = 0;
	//移动位置
	x -= 32;
	//这回合不准移动
	cant_move();
}

if(right_pressed()){
	//切换动画
	sprite_index = spr_player_idle;
	//动画第一帧
	//image_index = 0; 
	//蓄力清零
	states = 0;
	//移动位置
	x += 32;
	//这回合不准移动
	cant_move();
}
}

//惩罚，这回合不允许移动
function punish(){
	if(
		up_pressed()||down_pressed()||left_pressed()||right_pressed()
	){
		cant_move();
		//instance_create_depth(x,y,10,oMiss);
		instance_create_layer(x, y - 20, "Instances", oMiss)
		move_wait_round = 2;
	}
}
//解除惩罚
function release_punish(){
	can_move()
}