package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.VideoData;
import com.service.VodService;

@Controller
public class UpdateContrller {
	@Autowired
	VodService vodService;
	//视频列表
	@ResponseBody
	@GetMapping("/updateVodList")
	public List<String> updateVodList() {
		
		return vodService.getVod();
	}
	
	//更换视频源
	@ResponseBody
	@GetMapping("/updateVod")
	public VideoData updateVod() {
		return vodService.getPaly();
	}
	
	//视频播放完毕接着播放广告
	@ResponseBody
	@GetMapping("/playAd")
	public VideoData playAd() {
		return vodService.getAdVod();
	}
}
