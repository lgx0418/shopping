package com.shopping.product.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shopping.category.service.CategoryService;
import com.shopping.product.service.ProductService;
import com.shopping.product.vo.Product;
import com.shopping.utils.PageBean;
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

/*
 * 商品action
 */
public class ProductAction extends ActionSupport implements ModelDriven<Product>{

	//接收数据的模型驱动
	private Product product=new Product();
	@Override
	public Product getModel() {
		return product;
	}

	//注入productService
	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	//接收一级分类cid
	private Integer cid;
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	//接收二级分类csid
	private Integer csid;
	
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	//接收当前页数
	private int page;
	
	public void setPage(int page) {
		this.page = page;
	}

	//注入一级分类service
	private CategoryService categoryService;
	
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	//根据商品ID进行查询
	public String findByPid(){
		//只有一条数据，直接返回模型驱动对象
		product=productService.findByPid(product.getPid());
		return "findByPid";
	}
	//根据一级分类id查询商品
	public String findByCid(){
		//将数据封装到pageBean对象中
		PageBean<Product> pageBean=productService.findByPageCid(cid,page);//带分页查询一级分类商品
		//将pageBean存入值栈中
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCid";
	}
	//根据二级分类id查询商品
	public String findByCsid(){
		//带分页的查询二级分类商品
		PageBean<Product> pageBean=productService.findByCsid(csid,page);
		//存入值栈中
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCsid";
	}
}
