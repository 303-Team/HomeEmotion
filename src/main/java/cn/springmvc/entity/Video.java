package cn.springmvc.entity;

import java.io.Serializable;

public class Video implements Serializable {
	private String videoId;

	private String videoName;

	private String proName;

	private String username;

	private String proType;

	private String uploadTime;

	private String deleteFlag;

	private String picName;

	private Integer hot;

	private static final long serialVersionUID = 1L;

	public String getVideoId() {
		return videoId;
	}

	public void setVideoId(String videoId) {
		this.videoId = videoId == null ? null : videoId.trim();
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName == null ? null : videoName.trim();
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName == null ? null : proName.trim();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getProType() {
		return proType;
	}

	public void setProType(String proType) {
		this.proType = proType == null ? null : proType.trim();
	}

	public String getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(String uploadTime) {
		this.uploadTime = uploadTime == null ? null : uploadTime.trim();
	}

	public String getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag == null ? null : deleteFlag.trim();
	}

	public String getPicName() {
		return picName;
	}

	public void setPicName(String picName) {
		this.picName = picName == null ? null : picName.trim();
	}

	public Integer getHot() {
		return hot;
	}

	public void setHot(Integer hot) {
		this.hot = hot;
	}

}