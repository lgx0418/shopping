<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
				<s:if test="#session.existUser == null">
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>|
				</li>
				<li id="headerRegister" class="headerRegister" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/user_register.action">注册</a>|
				</li>
				</s:if>
				<s:else>
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<s:property value="#session.existUser.name"/>
					|</li>
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="#">会员中心</a>
				|</li>
				<li id="headerLogout" class="headerLogout" style="display: list-item;">
					<a href="javascript:window.opener=null;%20window.close();" onclick="logout()">退出</a>|
				</li>
				</s:else>
				<li id="headerUsername" class="headerUsername"></li>
				
						<li>
							<a>商家入口</a>
							|
						</li>
						
						
						
						
			</ul>
		</div>
		
	</div>
	<div class="span24">
		
	</div>

</div>	
	<script type="text/javascript">
		function logout(){
			if(confirm("确定要退出吗？")){
				top.location="${ pageContext.request.contextPath }/user_goBack.action";
				return false;
			}
		}
	</script>
</body>
</html>