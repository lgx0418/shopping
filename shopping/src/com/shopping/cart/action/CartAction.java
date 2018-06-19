package com.shopping.cart.action;

import org.apache.struts2.ServletActionContext;

import com.shopping.cart.vo.Cart;
import com.shopping.cart.vo.CartItem;
import com.shopping.product.service.ProductService;
import com.shopping.product.vo.Product;

/*
 * 购物车action
 */
public class CartAction {
	//接收pid
	private Integer pid;
	
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	//接收count
	private Integer count;
	
	public void setCount(Integer count) {
		this.count = count;
	}
	//注入productService
	private ProductService productService;
	
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	//我的购物车
	public String showCart(){
		return "showCart";
	}
	//添加商品到购物车
	public String addCart(){
		//封装一个购物项对象
		CartItem cartItem=new CartItem();
		//封装数量
		cartItem.setCount(count);
		//查询商品并保存到product对象中
		Product product=productService.findByPid(pid);
		//封装商品
		cartItem.setProduct(product);
		//购物车存放在session中
		Cart cart=getCart();
		cart.addCart(cartItem);
		return "addCart";
	}
	//清空购物车
	public String clearCart(){
		//获得购物车
		Cart cart=getCart();
		//调用实体类中清空购物车的方法
		cart.clearCart();
		return "clearCart";
	}
	//删除购物项
	public String deleteCart(){
		Cart cart=getCart();
		cart.removeCart(pid);
		return "deleteCart";
	}
	//从session中获得购物车
	public Cart getCart(){
		Cart cart=(Cart) ServletActionContext.getRequest().getSession().getAttribute("cart");
		if(cart==null){
			cart=new Cart();
			ServletActionContext.getRequest().getSession().setAttribute("cart",cart);
		}
		return cart;
	}
}
