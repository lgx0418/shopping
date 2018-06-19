package com.shopping.category.vo;

import java.io.Serializable;

/*
 * 一级分类实体类对象
 */
public class Category implements Serializable{
	private Integer cid;
	private String cname;
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
