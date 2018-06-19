package com.shopping.category.adminaction;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shopping.category.vo.Category;
import com.shopping.category.service.CategoryService;;
/*
 * 后台一级分类管理的Action
 */
public class AdminCategoryAction extends ActionSupport implements ModelDriven<Category>{
	//模型驱动使用的类
	private Category category =new Category();
	public Category getModel(){
		return category;
	}
	//注入一级分类的Service
	private CategoryService categoryService;
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	//后台执行查询所有一级标题的方法：
	public String findAll(){
		//查询所有一级分类
		List<Category> cList= categoryService.findAll();
		//将集合的数据显示到页面
		ActionContext.getContext().getValueStack().set("cList",cList);
		return "findAll";
	}
	//后台保存一级分类的方法
	public String save(){
		//调用Service进行保存
		categoryService.save(category);
		//页面跳转：
		return "saveSuccess";
	}
	//后台删除一级分类的方法:
	public String delete(){
		//接受cid，可以使用模型驱动
	category=(Category) categoryService.findByCid(category.getCid());
	//删除
	categoryService.delete(category);
	//页面跳转
	return "deleteSuccess";
	}
	//后台编辑一级分类的方法
	public String edit(){
		//根据一级分类的管理查询一级分类
		category=(Category) categoryService.findByCid(category.getCid());
		//页面跳转：
		return "editSuccess";
	}
	//后台修改一级分类的方法
	public String update(){
		categoryService.update(category);
		//页面跳转
		return"updateSuccess";
	}
}
 