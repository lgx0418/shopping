package com.shopping.index.action;

import com.opensymphony.xwork2.ActionSupport;

/*
 * 首页Action
 */
public class IndexAction extends ActionSupport{
	//访问首页的方法
	public String execute(){
		return "index";
	}
}
