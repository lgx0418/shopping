package com.shopping.index.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shopping.category.service.CategoryService;
import com.shopping.category.vo.Category;
import com.shopping.product.service.ProductService;
import com.shopping.product.vo.Product;

/*
 * 首页Action
 */
public class IndexAction extends ActionSupport{
	//注入categoryService
		private CategoryService categoryService;
		public void setCategoryService(CategoryService categoryService) {
			this.categoryService = categoryService;
		}
	//注入productService
		private ProductService productService;
		public void setProductService(ProductService productService) {
				this.productService = productService;
			}

	//访问首页的方法
	public String execute(){
		//查询一级分类
		List<Category> cList=categoryService.findAll();
		//将所有一级分类存到session中
		ServletActionContext.getContext().getSession().put("cList", cList);
		/*
		 * 如果有多个页面用到，就需存入到session中，如果只有一个页面用到，就只需保存到值栈中
		 */
		//查询热门商品
		List<Product> hList=productService.findHot();
		//将热门商品保存到值栈中
		ActionContext.getContext().getValueStack().set("hList", hList);
		//查询特价商品
		List<Product> bList=productService.findBargain();
		//将特价商品保存到值栈中
		ActionContext.getContext().getValueStack().set("bList", bList);
		return "index";
	}
}
