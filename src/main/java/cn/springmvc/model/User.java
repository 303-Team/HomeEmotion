package cn.springmvc.model;

import javax.swing.Spring;

/**
 * @ClassName: User
 * @Description: TODO(用户实体类)
 * @author xielinfu
 * @String 2016年2月29日 下午4:07:08
 */
public class User {
	private String id;
	private String username;
	private String password;
	private String email;
	private String picture;
	private String address;
	private String state;
	private int authorization;
	private Spring lastTime;
	private Byte del_flag;
	private String hidden;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getAuthorization() {
		return authorization;
	}
	public void setAuthorization(int authorization) {
		this.authorization = authorization;
	}
	public Spring getLastTime() {
		return lastTime;
	}
	public void setLastTime(Spring lastTime) {
		this.lastTime = lastTime;
	}
	public Byte getDel_flag() {
		return del_flag;
	}
	public void setDel_flag(Byte del_flag) {
		this.del_flag = del_flag;
	}
	public String getHidden() {
		return hidden;
	}
	public void setHidden(String hidden) {
		this.hidden = hidden;
	}
}
