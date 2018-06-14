<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>会员登录</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function checkForm(){
	//非空校验
	var username = document.getElementById("username").value;
	if(username == null || username == ''){
		document.getElementById("span1").innerHTML="<font color='red'>用户名不能为空！</font>";
		return false;
	}
	var password = document.getElementById("password").value;
	if(password == null || password == ''){
		document.getElementById("span2").innerHTML="<font color='red'>密码不能为空！</font>";
		return false;
	}
}
</script>
<%-- <style type="text/css">
.span5{
	width: 190px;
	position: absolute;
	left: 176px;
	top: 10px;
}
</style> --%>
</head>
<body>
<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="${ pageContext.request.contextPath }/index.action">
				<img src="./image/r___________renleipic_01/logo.gif" alt="网上商城"/>
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
	
</div>	</div>
	<%@ include file="header.jsp" %>
</div>
<div class="container login" style="height:350px;background-image: url(image/r___________renleipic_01/login11.jpg); 
		background-repeat:no-repeat"> <p ></p>
		<div class="span12">
<div class="ad">
					<img src="${pageContext.request.contextPath}/image/11111.jpg" width="500" height="330" alt="欢迎进入会员登录中心"/>
</div>		</div>

		<div class="span12 last">
			<div class="wrap">
				<div class="main">
					<div class="title">
						<strong>会员登录</strong>
					</div>
					<div style="margin-left: 115px;color:red;font-size: 14px"><s:actionerror /></div>
					<form id="loginForm" action="${ pageContext.request.contextPath }/user_login.action" method="post" novalidate="novalidate" onsubmit="return checkForm()">
						<table>
							<tbody><tr>
								<th>
										用户名:
								</th>
								<td>
									<input type="text" id="username" name="username" class="text" maxlength="20">
									<span id="span1"></span>
								</td>
							</tr>
							<br/>
							<tr>
								<th>
									密&nbsp;&nbsp;码:
								</th>
								<td>
									<input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off">
									<span id="span2"></span>
								</td>
							</tr>
								
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<label>
										<input type="checkbox" id="isRememberUsername" name="isRememberUsername" value="true">记住用户名
									</label>
									<label>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a >找回密码</a>
									</label>
								</td>
							</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="登 录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" class="reset" value="重置">
								</td>
								
							</tr>
							
						</tbody></table>
					</form>
				</div>
			</div>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
	  
	</div>
	<div class="span24">
		
	</div>
	<div class="span24">
		<div class="copyright">网上商城 版权所有</div>
	</div>
</div>
</body></html>