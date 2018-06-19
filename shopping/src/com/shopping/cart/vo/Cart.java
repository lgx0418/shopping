package com.shopping.cart.vo;
/*
 * 购物车实体类,数据需存放到Map集合中
 */

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

//Serializable防止运行时session报序列化的异常
public class Cart implements Serializable{
	//购物项集合：Map的key就是商品pid,value就是购物项
	//K - 此映射所维护的键的类型     V - 映射值的类型
	private Map<Integer, CartItem> map=new LinkedHashMap<Integer,CartItem>();
	//将map的链表集合转为单列集合，这样在页面上遍历就较为方便，有cartItems的属性
	public Collection<CartItem> getCartItems(){
		return map.values();
	}
	//购物车商品总计
	private double total;
	public double getTotal(){
		return total;
	}
	//添加到购物车
	public void addCart(CartItem cartItem){
		/*
		 * 判断购物车中是否存在改购物项：
		 * 如果存在：数量增加；购物项总条数=购物项总条数+添加的数量
		 * 如果不存在：像map中添加购物项；购物项总条数=购物项总条数+添加的数量
		 */
		//获取商品id
		Integer pid=cartItem.getProduct().getPid();
		if(map.containsKey(pid)){
			//如果存在，获得购物项中原来的商品
			CartItem cartItem2=map.get(pid);
			cartItem2.setCount(cartItem2.getCount()+cartItem.getCount());
		}else{
			//如果不存在，将购物项添加到map集合中
			map.put(pid, cartItem);
		}
		total+=cartItem.getSubtotal();
	}
	//移除购物项
	public void removeCart(Integer pid){
		//移除一个购物项
		CartItem cartItem=map.remove(pid);
		//总计减少
		total-=cartItem.getSubtotal();
	}
	//清空购物车
	public void clearCart(){
		//将所有购物车清空
		map.clear();
		//将购物项总条数设为0
		total=0;
	}
}
