package com.bean;

public class VideoData {
	private int id; //视频ID
	private int isLocal; //是否本地资源
	private int isPlay; //是否正在播放
	private int score; //视频积分
	private String lastTime; //最后播放本视频时间戳
	private String src; //视频播放地址
	private String type; //视频类型
	private String vodName; //视频名称
	
	public String getVodName() {
		return vodName;
	}
	public void setVodName(String vodName) {
		this.vodName = vodName;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int isLocal() {
		return isLocal;
	}
	public void setLocal(int isLocal) {
		this.isLocal = isLocal;
	}
	public int isPlay() {
		return isPlay;
	}
	public void setPlay(int isPlay) {
		this.isPlay = isPlay;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getLastTime() {
		return lastTime;
	}
	public void setLastTime(String lastTime) {
		this.lastTime = lastTime;
	}
	@Override
	public String toString() {
		return "VideoData [id=" + id + ", isLocal=" + isLocal + ", isPlay=" + isPlay + ", score=" + score
				+ ", lastTime=" + lastTime + ", src=" + src + ", type=" + type + ", vodName=" + vodName + "]";
	}
	
	
}
