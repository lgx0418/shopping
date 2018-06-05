package com.shopping.user.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.shopping.user.vo.User;



public class UserDao extends HibernateDaoSupport{
	// 按名次查询是否有该用户:
		public User findByUsername(String username) {
			String hql = "from User where username = ?";
			List<User> list = (List<User>) this.getHibernateTemplate().find(hql, username);
			if (list != null && list.size() > 0) {
				return list.get(0);
			}
			return null;
		}
}
