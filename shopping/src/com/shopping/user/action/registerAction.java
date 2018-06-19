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
		//验证码
		private String checkcode;
		public void setCheckcode(String checkcode) {  
	        this.checkcode = checkcode;  
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
	/*
	 * 用户注册的方法
	 */
	public String regist(){
		//判断验证码
		//获取session中的验证码
		String checkcodeInput=(String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		if(!checkcode.equalsIgnoreCase(checkcodeInput)){
			this.addActionError("验证码有误!");
			return "checkcodeMsg";
		}
		userService.save(user);
		this.addActionMessage("注册成功，请去邮箱激活！");
		return "msg";
	}
	
	/*
	 * 用户注册后激活的方法
	 */
	public String active(){
		//根据查询的激活码查询用户
		User existUser=userService.findByCode(user.getCode());
		if (existUser == null) {
			//如果用户激活码为空
			this.addActionError("亲，不好意思，激活码错误，激活失败！");
		}else{
			//查询到激活码，激活成功
			//修改用户状态
			existUser.setState(1);
			//清空用户激活码，保证激活码只能激活一次
			existUser.setCode(null);
			//将激活的用户更新到数据库中
			userService.update(existUser);
			this.addActionError("激活成功，请点击下方的链接登录吧！");
		}
		return "msg";
	}
	
	//登录链接跳转
	public String loginPage(){
		return "loginPage";
	}
	//用户登录执行的方法
	public String login(){
		//查询出用户名和密码
		User existUser= userService.login(user);
		if(existUser == null){
			this.addActionError("登录失败，用户名或密码错误或状态未激活！");
			return LOGIN;
		}else{
			//登录成功
			//将用户名保存在session会话中
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
			return "loginSuc";
		}
		
	}
	
	//用户退出的方法
	public String goBack(){
		//销毁保存在会话中的信息
		ServletActionContext.getRequest().getSession().invalidate();
		return "goBack";
	}
	//会员中心跳转
	public String info(){
		return "info";
	}
	//修改用户信息
	public String editInfo(){
		user.setState(1);;
		userService.editInfo(user);
		return "editInfo";
	}
}