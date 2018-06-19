<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>邮箱激活</title>
<%-- <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/> --%>
<style type="text/css">
a{
	text-decoration: none;
	color: black;
}
a:HOVER {
	color:red;
}
</style>
</head>
<body>
<div id="divcontent">
<table width="750px" border="0" cellspacing="0" style="margin: auto;border: 1px solid #CCC;box-shadow: inset 0 0 10px #CCC">
  <tr>
    <td style="padding:30px; text-align:center">
    <table width="65%" border="0" cellspacing="0" style="margin: auto">
      <tr>
        <td style="width:98px"><img src="${pageContext.request.contextPath}/images/msg.png" width="128" height="128" /></td>
        <td style="padding-top:30px">
        <font style="font-weight:bold; color:#FF0000;font-size:20px;font-family:微软雅黑">
	        <s:actionmessage/>
	        <s:actionerror/>
        </font>
        <br />
          <a href="${ pageContext.request.contextPath }/index.action">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="${ pageContext.request.contextPath }/user_register.action">买手注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="${ pageContext.request.contextPath }/user_loginPage.action">买手登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="${ pageContext.request.contextPath }/selleruser_registPage.action">商户注册</a>
          <a href="${ pageContext.request.contextPath }/selleruser_loginPage.action">商户登录</a>
         </td>
      </tr>
    </table>
    <h1>&nbsp;</h1></td>
    </tr>
</table>
</div>
</body>
</html>