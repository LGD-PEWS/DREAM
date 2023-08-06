// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function on_point(){

}
//可以移动了
function can_move(){
	can_i_move = true;
}
//这回合已经进行了移动
function cant_move(){
	can_i_move = false;
}
//按早了，这回合不允许移动
function punish(){
	cant_move()
	cant_move_frame = 1;
}