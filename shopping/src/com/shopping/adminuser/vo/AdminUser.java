package com.shopping.adminuser.vo;
/**
 * 后台用户登录实体
 * 
 */
public class AdminUser {
	private Integer aid;
	private String username;
	private String password;
	
	public Integer getaid() {
		return aid;
	}
	public void setaid(Integer aid) {
		this.aid = aid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
