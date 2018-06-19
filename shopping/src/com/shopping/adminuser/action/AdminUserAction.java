package com.shopping.adminuser.action;

import org.apache.struts2.ServletActionContext;

import com.shopping.adminuser.service.AdminUserService;
import com.shopping.adminuser.vo.AdminUser;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminUserAction extends ActionSupport implements
ModelDriven<AdminUser> {
// 模型驱动使用的对象
private AdminUser adminUser = new AdminUser();
public AdminUser getModel() {
return adminUser;
}
// 接收验证码:
private String checkcode;
public void setCheckcode(String checkcode) {
	this.checkcode = checkcode;
}
// 注入AdminUserService
private AdminUserService adminUserService;
public void setAdminUserService(AdminUserService adminUserService) {
this.adminUserService = adminUserService;
}
// 后台登录的执行的方法
public String login() {
	// 判断验证码程序:
	// 从session中获得验证码的随机值:
	String checkcode1 = (String) ServletActionContext.getRequest()
			.getSession().getAttribute("checkcode");
	if(!checkcode.equalsIgnoreCase(checkcode1)){
		this.addActionError("验证码输入错误!");
		return "checkcodeFail1";
	}
// 调用service方法完成登录
AdminUser existAdminUser = adminUserService.login(adminUser);
// 判断
if (existAdminUser == null) {
	// 用户名或密码错误
	this.addActionError("用户名或密码错误!");
	return "loginFail";
} else {
	// 登录成功:
	ServletActionContext.getRequest().getSession()
			.setAttribute("existAdminUser", existAdminUser);
	return "loginSuccess";
}
}
}
