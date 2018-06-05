package com.shopping.user.service;

import com.shopping.user.dao.UserDao;
import com.shopping.user.vo.User;

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
}
