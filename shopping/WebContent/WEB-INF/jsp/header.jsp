<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顶部页面</title>
</head>
<body>
	<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="http://localhost:8080/mango/">
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt="网上商城">
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
					
</div>	</div>
	<div class="span10 last">
		<div class="topNav clearfix">
			<ul>
				<li class="cart">
							<a href="./购物车.htm">购物车</a>
							|
				</li>
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="./会员登录.htm">登录</a>|
				</li>
				<li id="headerRegister" class="headerRegister" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/user_register.action">注册</a>|
				</li>
				<li id="headerUsername" class="headerUsername"></li>
				<li id="headerLogout" class="headerLogout">
					<a href="./index.htm" >[退出]</a>|
				</li>
						<li>
							<a>商家入口</a>
							|
						</li>
						<li>
							<a>会员中心</a>
							|
						</li>
						
						
						
			</ul>
		</div>
		
	</div>
	<div class="span24">
		
	</div>

</div>	
	
</body>
</html>