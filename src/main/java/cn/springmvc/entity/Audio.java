package cn.springmvc.entity;

import java.io.Serializable;

public class Audio implements Serializable {
    private String auId;

    private String auName;

    private String proName;

    private String username;

    private String auType;

    private String uploadTime;

    private String deleteFlag;

    private Integer hot;

    private String translation;

    private static final long serialVersionUID = 1L;

    public String getAuId() {
        return auId;
    }

    public void setAuId(String auId) {
        this.auId = auId == null ? null : auId.trim();
    }

    public String getAuName() {
        return auName;
    }

    public void setAuName(String auName) {
        this.auName = auName == null ? null : auName.trim();
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

    public String getAuType() {
        return auType;
    }

    public void setAuType(String auType) {
        this.auType = auType == null ? null : auType.trim();
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

    public String getTranslation() {
        return translation;
    }

    public void setTranslation(String translation) {
        this.translation = translation == null ? null : translation.trim();
    }
}