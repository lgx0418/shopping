<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>管理员登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/regist.css" />
  </head>
  <body>
<div class="divBody">
  <div class="divTitle">
    <span class="spanTitle">管理员登录</span>
  </div>
  <div class="divCenter">
  <center style="color:red" ><s:actionerror /></center> 
    <form action="${pageContext.request.contextPath }/adminUser_login.action" method="post" onsubmit="return checkForm();">
    <div align="center" style="height:30px;"><font style="color:#ff0000;font-size:16px;"></font></div>
    <input type="hidden" name="method" value=""/>
    <table>
      <tr>
        <td class="tdLabel">用户名：</td>
        <td class="tdInput">
          <input type="text" name="username" id="username" class="input" value="" placeholder="请输入用户名"/>
        </td>
        <td>
          <span id="span1"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">登录密码：</td>
        <td class="tdInput">
          <input type="password" name="password" id="loginpass" class="input" value="" placeholder="请输入密码"/>
        </td>
        <td>
          <span id="span2"></span>
        </td>
      </tr>
      <!--验证码  -->
	   <tr>
			<td class="tdLabel">验证码:</td>
			<td class="tdInput">
			    <input type="text" id="checkcode" name="checkcode" class="input" placeholder="请输入验证码" maxlength="4" autocomplete="off">
			 </td>
			 <td>
			    <img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action" onclick="change()" title="换一张">
			</td>
		</tr>
		<tr>
        <td>&nbsp;</td>
        <td>
          <input type="submit" value="" id="submitBtn"/>
        </td>
        <td>&nbsp;</td>
      </tr>
    </table>
    </form>
  </div>
</div>
  </body>
  <script>
  	function checkForm(){
  		var username=document.getElementById("username").value;
  		if(username == null || username == ''){
  			document.getElementById("span1").innerHTML="<font color='red'>用户名不能为空！</font>";
  			return false;
  		}
  		var loginpass=document.getElementById("loginpass").value;
  		if(loginpass == null || loginpass == ''){
  			document.getElementById("span2").innerHTML="<font color='red'>密码不能为空！</font>";
  			return false;
  		}
  	}	
  </script>
  <script type="text/javascript">
//切换验证码
  function change(){
  	var img1=document.getElementById("checkImg");
  	img1.src="${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime(); //加时间戳防止缓存
  }
  </script>-->
</html>
	