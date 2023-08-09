/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//每分钟的毫秒数
enum TIME{
	MS = 60000,
}
//音乐是几拍的
beat = 120;
//图片帧
img_frame = 60;
//图片几拍一循环
img_beat_loop = 2;
//一拍有几毫秒 
ms_per_beat = TIME.MS / beat;
//一拍有几帧
frame_per_beat = img_frame / img_beat_loop;
//一帧有几毫秒
ms_per_frame = ms_per_beat / frame_per_beat;
//音乐所处的状态 0完美节拍 1前误差 2惩罚区域 3后误差
music_status = 0
//强弱拍 0是强拍
states = 0;
//频率 3600是每分钟的帧数，不需要改变
frequency = 3600/beat;
//左误差 单位：帧
left_deviation = 10;
//右误差 单位：帧
right_deviation = 10;
//惩罚区时常 单位:帧
punish_deviation = frame_per_beat - left_deviation - right_deviation;
//头帧所在的时间
frame_time = current_time;
//这回合第一次进惩罚区
first_time_in_publish = true;
//
//帧
frame = 1;














