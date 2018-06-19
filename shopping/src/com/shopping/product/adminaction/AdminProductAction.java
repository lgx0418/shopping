package com.shopping.product.adminaction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shopping.product.service.ProductService;
import com.shopping.product.vo.Product;
import com.shopping.utils.PageBean;

/*
 * 后台商品管理Action
 */
public class AdminProductAction extends ActionSupport implements ModelDriven<Product>{
	//模型驱动使用的对象
	private Product product=new Product();
	public Product getModel() {
		return product;
	}
	//接收page参数
		private Integer page;
		public void setPage(Integer page) {
			this.page = page;
		}
	//注入商品的service
	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
		// 查询所有的商品:
		public String findAll() {
			PageBean<Product> pageBean = productService.findByPage(page);
			// 将PageBean数据存入到值栈中.
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
			// 页面跳转
			return "findAll";
		}
}
