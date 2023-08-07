/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//每分钟的毫秒数
enum TIME{
	MS = 60000,
}
//音乐是几拍的
beat = 120;
//音乐所处的状态 0没误差 1前误差 2惩罚区域 3后误差
music_status = 0
//一拍有几毫秒 
ms_per_beat = TIME.MS / beat;
//一帧有几毫秒
ms_per_frame = ms_per_beat / 30;
//强弱拍 0是强拍
states = 0;
//频率 3600是每分钟的帧数，不需要改变
frequency = 3600/beat;
//帧
frame = 1;
//左误差 单位：帧
left_deviation = 10;
//右误差 单位：帧
right_deviation = 10;
//头帧所在的时间
frame_time = current_time;













