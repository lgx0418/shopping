<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/regist.css" />
  </head>
  <style>
  	a{
  		text-decoration: none;
  		color: black;
  	}
  	a:hover{
  		text-decoration: none;
  		color: red;
  	}
  	.divCenter {
			width: 880px;
			height: 330px;
			border-left: 1px #d0d0d0 solid;
			border-right: 1px #d0d0d0 solid;
			border-bottom: 1px #d0d0d0 solid;
		}

  </style>
  <body>
<div class="divBody">
  <div class="divTitle">
    <span class="spanTitle">商户登录</span>
    <span style="float: right;font-weight: 900;line-height: 32px;">
    	<a href="sellerregister.html">&nbsp;&nbsp;商户注册入口</a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<a href="../user_login.htm">¥&nbsp;&nbsp;买手入口</a>&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
  </div>
  <div class="divCenter">
    <form action="${ pageContext.request.contextPath }/selleruser_login.action" method="post" onsubmit="return checkForm();">
    <div align="center" style="height:30px;"><font style="color:#ff0000;font-size:16px;"></font></div>
    <input type="hidden" name="method" value=""/>
    <table>
      <tr>
        <td class="tdLabel">用户名：</td>
        <td class="tdInput">
          <input type="text" name="susername" id="loginname" class="input" value="" placeholder="请输入用户名"/>
        </td>
        <td>
          <span id="span1"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">登录密码：</td>
        <td class="tdInput">
          <input type="password" name="spass" id="loginpass" class="input" value="" placeholder="请输入密码"/>
        </td>
        <td>
          <span id="span2"></span>
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
  		var loginname=document.getElementById("loginname").value;
  		if(loginname == null || loginname == ''){
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
 
</html>
	