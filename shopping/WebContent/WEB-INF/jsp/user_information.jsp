<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>个人信息</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css"/>
</head>
<body style="margin-top: -35px;">
<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="${ pageContext.request.contextPath }/index.action">
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt="">
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
					
</div>	</div>
<%@ include file="header.jsp" %>
	<div class="span24">
		<ul class="mainNav">
					<li>
						<a href="${ pageContext.request.contextPath }/index.action">首页</a>
						|
					</li>
					<!--取出一级分类  -->
					<s:iterator var="c" value="#session.cList">
						<li>
							<a href=""><s:property value="#c.cname"/></a>|
						</li>
					</s:iterator>
		</ul>
	</div>


</div>	

</div>	<div class="container register">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix" >
					<div class="title">
						<strong>查看与修改个人信息</strong>personal information
					</div>
					<form id="registerForm"  method="post" novalidate="novalidate">
						<table >
							<tbody >
							<tr >
								<th>
									<span class="requiredField">*</span>用户名:
								</th>
								<td>
									<input type="text" value="小明" id="username" name="username" class="text" maxlength="20">
								</td>
							</tr>
							<tr>
									<th><span class="requiredField">*</span>密&nbsp;&nbsp;码:</th>
									<td><input value="*****" id="password" name="password"
										class="text" maxlength="20" autocomplete="off">
										<span id="span2"></span>
									</td>
							</tr>
							<tr>
									<th><span class="requiredField">*</span>确认密码:</th>
									<td><input value="*****" type="password" id="repassword" class="text"
										maxlength="20" autocomplete="off">
										<span id="span3"></span>
									</td>
							</tr>
							<tr >
										<th>
											真实姓名:
										</th>
										<td style="width:229px;">
												<input type="text" readonly="true" value="黎明" name="name" class="text" maxlength="100">
										</td>
										<td >
											不可改变
										</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>E-mail:
								</th>
								<td>
									<input type="text" value="760832151@qq.com" id="email" name="email" class="text" maxlength="200">
								</td>
							</tr>
									
									<tr>
										<th>
											性别:
										</th>
										<td>
												<span class="fieldSet">
														<label>
															<input checked type="radio" name="sex"  value="male">男
														</label>
														<label>
															<input type="radio" name="sex" value="female">女
														</label>
												</span>
										</td>
										<tr>
											<th><span class="requiredField">*</span>电话:</th>
											<td><input type="text" value="1827999690" id="telephone" name="phone"
												class="text">
												<span id="span6"></span>
											</td>
										</tr>
									</tr>
									<!-- <tr>
										<th>
											出生日期:
										</th>
										<td>
												<input type="text" value="1996-04-18" name="memberAttribute_3" class="text" onfocus="WdatePicker();">
										</td>
									</tr> -->
									
									<tr>
										<th>
											地址:
										</th>
										<td>
												<input type="text" value="广东广州" name="addr" class="text" maxlength="200">
										</td>
									</tr>
								
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="确认保存">
								</td>
							</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								
							</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									
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
		<div class="copyright">网上商城 版权所有</div>
	</div>
</div>
<div id="_my97DP" style="position: absolute; top: -1970px; left: -1970px;"><iframe style="width: 190px; height: 191px;" src="./会员注册 - Powered By Mango Team_files/My97DatePicker.htm" frameborder="0" border="0" scrolling="no"></iframe>
	
</div>
</body>
</html>