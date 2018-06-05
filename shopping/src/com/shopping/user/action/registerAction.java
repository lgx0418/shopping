package com.shopping.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shopping.user.service.UserService;
import com.shopping.user.vo.User;



public class registerAction extends ActionSupport implements ModelDriven<User>{
	// 模型驱动使用的对象
		private User user = new User();

		public User getModel() {
			return user;
		}
		// 注入UserService
		private UserService userService;

		public void setUserService(UserService userService) {
			this.userService = userService;
		}
	//跳转到注册界面的方法
	public String register(){
		return "register";
	}
	//ajax异步校验
	public String findByName() throws IOException {
		// 调用Service进行查询:
		User existUser = userService.findByUsername(user.getUsername());
		// 获得response对象,项页面输出:
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		// 判断
		if (existUser != null) {
			// 查询到该用户:用户名已经存在
			response.getWriter().println("<font color='red'>用户名已经存在</font>");
		} else {
			// 没查询到该用户:用户名可以使用
			response.getWriter().println("<font color='green'>用户名可以使用</font>");
		}
		return NONE;
	}
	
}