package cn.springmvc.dao;

import cn.springmvc.model.User;


public interface UserDAO {

	/**
	 * 添加新用户
	 * @param user
	 * @return
	 */
	public void insertUser(User user);
	
	/**
	 * 检测用户是否已经注册
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
