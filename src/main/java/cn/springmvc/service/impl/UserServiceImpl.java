package cn.springmvc.service.impl;

import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springmvc.dao.UserDAO;
import cn.springmvc.model.User;
import cn.springmvc.service.UserService;
import cn.springmvc.utils.MD5Util;
import cn.springmvc.utils.UUIDUtil;


@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
//	Date date=new Date();
	MD5Util md5=new MD5Util();
	UUIDUtil uuid=new UUIDUtil();
	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
//		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String time=format.format(date); 
//		user.setLastTime(user.getLastTime());
		//user.setLastTime(time);//设置为当前时间
		user.setId(uuid.createUUID());
			try {
				user.setPassword(md5.getMD5(user.getPassword()));
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//数据加密
			userDAO.insertUser(user);
	}

	@Override
	public User findUserName(String username) {
		return userDAO.findUserName(username);
	}

	@Override
	public User findUser(User user) {
		// TODO Auto-generated method stub
		try {
			user.setPassword(md5.getMD5(user.getPassword()));
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userDAO.findUser(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		try {
			user.setPassword(md5.getMD5(user.getPassword()));
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		userDAO.updateUser(user);
	}

}
