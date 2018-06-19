package com.shopping.category.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.shopping.category.dao.CategoryDao;
import com.shopping.category.vo.Category;
/*
 * 	一级分类的业务层对象
 */
@Transactional
public class CategoryService {
	//注入CategoryDao
	private CategoryDao categoryDao;
	public void setCategoryDao(CategoryDao categoryDao) {
				this.categoryDao = categoryDao;
			}
	// 业务层查询所有一级分类的方法
	public List<Category> findAll() {
		// TODO 自动生成的方法存根
		return categoryDao.findAll();
	}
	//业务层保存一级分类的方法
	public  void save(Category category) {
		// TODO 自动生成的方法存根
		categoryDao.save(category);
	}
	//业务层根据cid查询一级分类
	public Object findByCid(Integer cid) {
		// TODO 自动生成的方法存根
		return categoryDao.findByCid(cid);
	}
	//业务层删除一级分类的方法
	public void delete(Category category) {
		// TODO 自动生成的方法存根category
		categoryDao.delete(category);
		
	}
	//业务层修改一级分类的方法
	public void update(Category category) {
		// TODO 自动生成的方法存根
		categoryDao.update(category);
	}

}
