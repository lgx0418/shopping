package com.shopping.cart.vo;
/*
 * 购物项对象
 */

import com.shopping.product.vo.Product;

public class CartItem {
	//商品信息
	private Product product;
	//商品数量
	private int count;
	//商品小计
	private double subtotal;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	//小计自动计算
	public double getSubtotal() {
		return count * product.getShop_price();
	}
	
}
