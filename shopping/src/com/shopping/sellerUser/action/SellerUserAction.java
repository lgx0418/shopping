package com.shopping.sellerUser.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shopping.sellerUser.service.SellerUserService;
import com.shopping.sellerUser.vo.SellerUser;

/*
 * 商户登录注册
 */
public class SellerUserAction extends ActionSupport implements ModelDriven<SellerUser>{
	private SellerUser sellerUser=new SellerUser();
	@Override
	public SellerUser getModel() {
		return sellerUser;
	}
	//接收验证码
	private String checkcode;
	public void setCheckcode(String checkcode) {  
		   this.checkcode = checkcode;  
	}  
	//接收业务层
	private SellerUserService sellerUserService;
	
	public void setSellerUserService(SellerUserService sellerUserService) {
		this.sellerUserService = sellerUserService;
	}

	//跳转到注册界面
	public String sellerregist(){
		return "sellerregist";
	}
	//ajax异步校验商铺用户名
	public String findBySellername() throws IOException{
		//调用service进行查询
		SellerUser existSellerUser=sellerUserService.findBySellername(sellerUser.getSusername());
		//获得response对象，向页面输出
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		if(existSellerUser != null){
			response.getWriter().println("<font color='red'>用户名已经存在!</font>");
		}else{
			response.getWriter().println("<font color='green'>用户名可以使用!</font>");
		}
		return NONE;
	}
	//ajax异步校验商铺名
		public String findBySshopName() throws IOException{
			//调用service进行查询
			SellerUser existSellerUser=sellerUserService.findBySshopName(sellerUser.getSshopName());
			//获得response对象，向页面输出
			HttpServletResponse response=ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8");
			if(existSellerUser != null){
				response.getWriter().println("<font color='red'>商铺名已经存在!</font>");
			}else{
				response.getWriter().println("<font color='green'>商铺名可以使用!</font>");
			}
			return NONE;
		}
	//商户注册的方法
	public String registPage(){
		//获取session中的验证码
		String chString =(String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		if(!checkcode.equalsIgnoreCase(chString)){
			this.addActionError("验证码有误！");
			return "checkcodeError";
		}
		sellerUserService.save(sellerUser);
		this.addActionError("注册成功，请去邮箱激活！");
		return "msg";
	}
	//商户注册后激活的方法
	public String active(){
		//根据查询的激活码查询用户
		SellerUser existSellerUser=sellerUserService.findBySellerCode(sellerUser.getScode());
		if(existSellerUser == null){
			//如果查询到的激活码为空
			this.addActionError("亲，不好意思，激活失败哦！");
		}else{
			//查询到激活码，修改用户状态
			existSellerUser.setSstate(1);
			//清空激活码
			existSellerUser.setScode(null);
			//将激活的用户更新到数据库中
			sellerUserService.update(existSellerUser);
			this.addActionError("激活成功，请点击下方相应链接登录吧！");
		}
		return "msg";
	}
	//商户登录跳转
	public String loginPage(){
		return "loginPage";
	}
	//商户登录执行的方法
	public String login(){
		SellerUser existSellerUser=sellerUserService.login(sellerUser);
		if(existSellerUser == null){
			this.addActionError("登录失败，用户名或密码错误或状态未激活！");
			return LOGIN;
		}else{
			ServletActionContext.getRequest().getSession().setAttribute("existSellerUser", existSellerUser);
			return "loginSuc";
		}
	}
	//商户退出
	public String goBack(){
		//销毁保存在session中的用户
		ServletActionContext.getRequest().getSession().invalidate();
		return "goBack";
	}
}
