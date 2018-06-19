<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顶部页面</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="span10 last">
		<div class="topNav clearfix">
			<ul>
				
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
				<li class="cart">
					<a href="${ pageContext.request.contextPath }/cart_showCart.action">购物车</a>
					|
				</li>
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/user_info.action?uid=<s:property value="#session.existUser.uid"/>">会员中心</a>
				|</li>
				<li id="headerLogout" class="headerLogout" style="display: list-item;">
					<a href="javascript:window.opener=null;%20window.close();" onclick="logout()">退出</a>|
				</li>
				</s:else>
				<li id="headerUsername" class="headerUsername"></li>
						<li>
							<a href="${pageContext.request.contextPath}/selleruser_sellerregist.action"><img src="${pageContext.request.contextPath}/images/shop.jpg"/>&nbsp;商家入口</a>
							|
						</li>
			</ul>
		</div>
		
	</div>
	<div class="span24">
		
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