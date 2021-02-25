package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.VideoData;
import com.mapper.VodMapper;

@Service
public class VodService {
	@Autowired
	VodMapper vodMapper;
	//获取播放列表
	public List<String> getVod(){
		List<String> list = new ArrayList<String>();
		List<VideoData> vodList = vodMapper.getVod();
		for(int i=0;i<vodList.size();i++) {
			list.add(vodList.get(i).getVodName() + "-" + vodList.get(i).getScore());
		}
		return list;
	}
	//播放积分最高视频
	public VideoData getPaly() {
		VideoData vod = vodMapper.getPlay();//获取积分最高视频
		VideoData newVod = vod;
		vod.setLastTime(System.currentTimeMillis()+"");
		vod.setScore(0);
		vod.setPlay(0);
		vodMapper.updateVod(vod);//积分清零
		return newVod;
	}
	
	//点播增加积分
	public String addSore(String vodName,int score) {
		VideoData vod = vodMapper.getPlay();
		long nowTime = System.currentTimeMillis();
		long vodLastTime = Long.parseLong(vod.getLastTime());
		if((nowTime-vodLastTime) > 43200) {
			
			return "点播成功";
		}else {
			return "点播失败，原因："+((nowTime-vodLastTime)/60)+"分钟后才可以点播";
		}
	}
	//返回广告视频
	public VideoData getAdVod() {
		return vodMapper.getAdVod();
	}
}
