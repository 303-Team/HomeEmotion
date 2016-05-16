package cn.springmvc.service;

import cn.springmvc.model.User;


public interface UserService {
	/**
	 * 用户注册
	 * @param user
	 */
	public void insertUser(User user);
	/**
	 * 用户注册检测
	 * @param username
	 * @return
	 */
	public User findUserName(String username);
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public User findUser(User user);
	/**
	 * 修改用户信息
	 * @param user
	 */
	public void updateUser(User user);
}
