package com.shopping.category.vo;

import java.util.HashSet;
import java.util.Set;

import com.shopping.categorysecond.vo.CategorySecond;

/*
 * 一级分类
 */
public class Category {
	private Integer cid;
	private String cname;
	//二级分类的集合
	private Set<CategorySecond> categorySeconds=new HashSet<CategorySecond>();
	
	public Set<CategorySecond> getCategorySeconds() {
		return categorySeconds;
	}
	public void setCategorySeconds(Set<CategorySecond> categorySeconds) {
		this.categorySeconds = categorySeconds;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	
}
