package com.shopping.user.service;

import org.springframework.transaction.annotation.Transactional;


import com.shopping.user.dao.UserDao;
import com.shopping.user.vo.User;
import com.shopping.utils.MailUtils;
import com.shopping.utils.UUIDUtils;

@Transactional
public class UserService {
	// 注入UserDao
		private UserDao userDao;

		public void setUserDao(UserDao userDao) {
			this.userDao = userDao;
		}
		
		// 按用户名查询用户的方法:
		public User findByUsername(String username){
			return userDao.findByUsername(username);
		}

		//注册界面保存用户到数据库
		public void save(User user) {
			/*
			 * 将数据存入到数据库
			 */
			user.setState(0);//0代表未激活，1代表已激活
			String code=UUIDUtils.getUUID()+UUIDUtils.getUUID();//64位激活码
			user.setCode(code);
			userDao.save(user);
			//发送激活邮件
			MailUtils.sendMail(user.getEmail(), code);
		}

		//激活用户
		public User findByCode(String code) {
			return userDao.findByCode(code);
		}

		///更新激活的用户
		public void update(User existUser) {
			userDao.update(existUser);
		}

		//用户登录
		public User login(User user) {
			return userDao.login(user);
		}
}
