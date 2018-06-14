package com.shopping.category.action;

import com.shopping.category.service.CategoryService;

public class CategoryAction {
//注入categoryService
	private CategoryService categoryService;
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
}
