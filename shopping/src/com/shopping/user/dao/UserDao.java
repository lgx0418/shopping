package com.shopping.user.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.shopping.user.vo.User;


public class UserDao extends HibernateDaoSupport{
	    // 查询是否有该用户:
		public User findByUsername(String username) {
			String hql = "from User where username = ?";
			List<User> list = (List<User>) this.getHibernateTemplate().find(hql, username);
			
			if (list != null && list.size() > 0) {
				return list.get(0);
			}
			return null;
			
		}

		//保存用户到数据库
		public void save(User user) {
			this.getHibernateTemplate().save(user);
			
		}

		//根据激活码查询用户
		public User findByCode(String code) {
			String hql="from User where code = ?";
			List<User> list=(List<User>) this.getHibernateTemplate().find(hql, code);
			if(list !=null && list.size()>0){
				return list.get(0);
			}
			return null;
		}

		//更新激活的用户
		public void update(User existUser) {
			this.getHibernateTemplate().update(existUser);
		}

		//用户登录
		public User login(User user) {
			String hql="from User where username = ? and password = ? and state = ?";
			List<User> list=(List<User>) this.getHibernateTemplate().find(hql, user.getUsername(),user.getPassword(),1);
			if(list !=null && list.size()>0){
				return list.get(0);
			}
			return null;
		}

		//编辑用户
		public void editInfo(User user) {
			this.getHibernateTemplate().update(user);
		}
}
