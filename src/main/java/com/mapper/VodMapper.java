package com.mapper;

import java.util.List;

import com.bean.VideoData;

public interface VodMapper {
	public List<VideoData> getVod();//获取播放列表
	public void updateVod(VideoData vod);//更新视频信息
	public VideoData getPlay();//获取点播视频 按积分排序
	public void addVod(VideoData vod);//添加一个视频资源
	public VideoData getAdVod();//获取广告视频
	public VideoData updateAdVod();//更新广告视频
	
}
