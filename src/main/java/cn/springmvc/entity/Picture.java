package cn.springmvc.entity;

import java.io.Serializable;

public class Picture implements Serializable {
    private String picId;

    private String picName;

    private String picType;

    private String userId;

    private String username;

    private String proName;

    private String uploadTime;

    private String deleteFlag;

    private Integer hot;

    private static final long serialVersionUID = 1L;

    public String getPicId() {
        return picId;
    }

    public void setPicId(String picId) {
        this.picId = picId == null ? null : picId.trim();
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName == null ? null : picName.trim();
    }

    public String getPicType() {
        return picType;
    }

    public void setPicType(String picType) {
        this.picType = picType == null ? null : picType.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName == null ? null : proName.trim();
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

    public Integer getHot() {
        return hot;
    }

    public void setHot(Integer hot) {
        this.hot = hot;
    }
}