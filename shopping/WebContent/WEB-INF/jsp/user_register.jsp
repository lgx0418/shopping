<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>会员注册</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function checkForm(){
	// 校验用户名:
	// 获得用户名文本框的值:
	var username = document.getElementById("username").value;
	if(username == null || username == ''){
		document.getElementById("span1").innerHTML="<font color='red'>用户名不能为空！</font>";
		return false;
	}
	// 校验密码:
	// 获得密码框的值:
	var password = document.getElementById("password").value;
	if(password == null || password == ''){
		document.getElementById("span2").innerHTML="<font color='red'>密码不能为空！</font>";
		return false;
	}
	// 校验确认密码:
	var repassword = document.getElementById("repassword").value;
	if(repassword != password){
		document.getElementById("span3").innerHTML="<font color='red'>两次输入的密码不一致！</font>";
		return false;
	}
	//校验email
	var email = document.getElementById("email").value;
	if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(email)){
		document.getElementById("span4").innerHTML="<font color='red'>邮箱格式不正确！</font>";
		return false;
	}
	//校验姓名
	var name=document.getElementById("name").value;
	if(name==null || name== ''){
		document.getElementById("span5").innerHTML="<font color='red'>姓名不能为空！</font>";
		return false;
	}
	//校验电话
	var telephone=document.getElementById("telephone").value;
	if(telephone==null || telephone== ''){
		document.getElementById("span6").innerHTML="<font color='red'>电话不能为空！</font>";
		return false;
	}
	//校验地址
	var addr=document.getElementById("addr").value;
	if(addr==null || addr== ''){
		document.getElementById("span7").innerHTML="<font color='red'>地址不能为空！</font>";
		return false;
	}
}

   /*
   	ajax异步校验用户名是否存在
   */
	function checkUsername() {
	   //获取用户名输入框的值
	   var username=document.getElementById("username").value;
	   //创建异步交互对象
		var xhr=createXmlHttp();
	   //设置监听
	   xhr.onreadystatechange=function(){
		   if(xhr.readyState == 4 && xhr.status == 200){
			   document.getElementById("span1").innerHTML = xhr.responseText;
		   }
	   }
	   //time="+new Date().getTime()+"解决时间缓冲问题
	   xhr.open("GET","${pageContext.request.contextPath}/user_findByName.action?time="+new Date().getTime()+"&username="+username,true);
	   xhr.send(null);
	}
	function createXmlHttp(){
		var xmlHttp;
		 try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
	}
	
</script>

</head>
<body>
	<%@ include file="header.jsp"%>
	<%request.setCharacterEncoding("UTF-8");%>
	<div class="container register">
		<!-- <p style="background-image: url(image/r___________renleipic_01/2.png); 
		background-repeat:no-repeat;">请填写您的注册信息</p> -->
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix"
					style="background-image: url(image/r___________renleipic_01/2.png); background-repeat: no-repeat;">
					<div class="title">
						<strong>会员注册</strong>USER REGISTER
					</div>
					
					<form id="registerForm"  action="${pageContext.request.contextPath}/user_regist.action" method="post" novalidate="novalidate" autocomplete="off" onsubmit="return checkForm();">
						<table>
							<tbody>
								<tr>
									<th><span class="requiredField">*</span>用户名:</th>
									<td><input type="text" id="username" name="username"
										class="text" maxlength="20" onblur="checkUsername()" /> 
										<span id="span1"></span>
									</td>
									
								</tr>
								<tr>
									<th><span class="requiredField">*</span>密&nbsp;&nbsp;码:</th>
									<td><input type="password" id="password" name="password"
										class="text" maxlength="20" autocomplete="off">
										<span id="span2"></span>
									</td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>确认密码:</th>
									<td><input type="password" id="repassword" name="rePassword" class="text"
										maxlength="20" autocomplete="off">
										<span id="span3"></span>
									</td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>E-mail:</th>
									<td><input type="text" id="email" name="email"
										class="text" maxlength="200">
										<span id="span4"></span>
									</td>
									
								</tr>
								<tr>
									<th><span class="requiredField">*</span>真实姓名:</th>
									<td><input type="text" id="name" name="name"
										class="text" maxlength="200">
										<span id="span5"></span>
									</td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>性别:</th>
									<td><span class="fieldSet"> <label> <input
												type="radio" name="sex" value="男" checked="true">男
										</label> <label> <input type="radio" name="sex"
												value="女">女
										</label>
									</span></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>电话:</th>
									<td><input type="text" id="telephone" name="phone"
										class="text">
										<span id="span6"></span>
									</td>
								</tr>

								<tr>
									<th><span class="requiredField">*</span>地址:</th>
									<td><input type="text" id="addr" name="addr"
										class="text" maxlength="200">
										<span id="span7"></span>
									</td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>验证码:</th>
									<td><span class="fieldSet"> 
										<input type="text" id="checkcode" name="checkcode" class="text" maxlength="4" autocomplete="off">
										<img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action" onclick="change()"  title="点击更换验证码"> 
										</span>
										<span style="color:red;font-size:14px"><s:actionerror/></span> 
									</td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td><input type="submit" class="submit" value="立即注册">
									</td>
								</tr>
								
								
							</tbody>
						</table>

					</form>


				</div>
			</div>
			<div class="container footer">
				<div class="span24">
					<div class="footerAd"></div>
				</div>
				<div class="span24"></div>
				<div class="span24">
					<div class="copyright">网上商城 版权所有</div>
				</div>
			</div>
			<div id="_my97DP"
				style="position: absolute; top: -1970px; left: -1970px;">
				<iframe style="width: 190px; height: 191px;"
					src="./会员注册 - Powered By Mango Team_files/My97DatePicker.htm"
					frameborder="0" border="0" scrolling="no"></iframe>
			</div>
<script type="text/javascript">
//切换验证码  
function change(){  
    var img1=document.getElementById("checkImg");  
    img1.src="${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime(); //加时间戳防止缓存  
}  
</script>
</body>

</html>