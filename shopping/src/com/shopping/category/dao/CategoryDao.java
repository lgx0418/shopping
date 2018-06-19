package com.shopping.category.dao;

import java.util.List;

import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.shopping.category.vo.Category;
/*
 * 一级分类的持久层对象
 */
public class CategoryDao extends HibernateDaoSupport{
	//DAO层的查询所有一级分类的方法
		public List<Category> findAll() {
			String hql = "from Category";
			List<Category> list = (List<Category>) this.getHibernateTemplate().find(hql);
			return list;
		}
//Dao保存一级分类的方法
	public void save(Category category) {
		this.getHibernateTemplate().save(category);
	}
	//DAO层根据cid查询一级分类的方法
	public Object findByCid(Integer cid) {
		// TODO 自动生成的方法存根
		return this.getHibernateTemplate().get(Category.class, cid);
	}
	//DAO层的删除一级分类的方法
	public void delete(Category category) {
		// TODO 自动生成的方法存根
		this.getHibernateTemplate().delete(category);
		
	}
	//DAO层的修改一级分类的方法
	public void update(Category category) {
		// TODO 自动生成的方法存根
		this.getHibernateTemplate().update(category);
	}
}
