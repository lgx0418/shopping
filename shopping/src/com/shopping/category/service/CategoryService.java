package com.shopping.category.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.shopping.category.dao.CategoryDao;
import com.shopping.category.vo.Category;

/*
 * 一级分类业务层
 */
@Transactional
public class CategoryService {
	//注入一级分类dao层
	private CategoryDao categoryDao;
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	//一级分类查询
	public List<Category> findAll() {
		return categoryDao.findAll();
	}
}
