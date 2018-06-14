package com.shopping.category.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.shopping.category.vo.Category;

public class CategoryDao extends HibernateDaoSupport{

	//一级分类查询
	public List<Category> findAll() {
		String hql="from Category";
		List<Category> list=(List<Category>) this.getHibernateTemplate().find(hql);
		return list;
	}
	
}
