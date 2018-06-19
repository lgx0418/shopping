<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商户注册</title>
    
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
		height: 700px;
		border-left: 1px #d0d0d0 solid;
		border-right: 1px #d0d0d0 solid;
		border-bottom: 1px #d0d0d0 solid;
	}

  </style>
  <body>
<div class="divBody">
  <div class="divTitle">
    <span class="spanTitle">商户注册</span>
    <span style="float: right;font-weight: 900;line-height: 32px;">
    	<a href="${ pageContext.request.contextPath }/selleruser_loginPage.action">&nbsp;&nbsp;商户登录入口</a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<a href="${ pageContext.request.contextPath }/user_loginPage.action">¥&nbsp;&nbsp;买手入口</a>&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
  </div>
  <div class="divCenter">
    <form action="${ pageContext.request.contextPath }/selleruser_registPage.action" method="post" onsubmit="return checkForm();">
    <div align="center" style="height:30px;"><font style="color:#ff0000;font-size:16px;"></font></div>
    <input type="hidden" name="method" value=""/>
    <table>
      <tr>
        <td class="tdLabel">用户名：</td>
        <td class="tdInput">
          <input type="text" name="susername" id="susername" class="input" value="" placeholder="请输入用户名" onblur="checkSellerUserName()"/>
        </td>
        <td>
          <span id="span1"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">登录密码：</td>
        <td class="tdInput">
          <input type="password" name="spass" id="spass" class="input" value="" placeholder="请输入密码"/>
        </td>
        <td>
          <span id="span2"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">确认密码：</td>
        <td class="tdInput">
          <input type="text" id="srepass" class="input" value="" placeholder="请确认输入的密码"/>
        </td>
        <td>
          <span id="span3"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">E-mail：</td>
        <td class="tdInput">
          <input type="text" name="semail" id="semail" class="input" value="" placeholder="请输入邮箱地址"/>
        </td>
        <td>
          <span id="span4"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">真实姓名：</td>
        <td class="tdInput">
          <input type="text" name="sname" id="sname" class="input" value="" placeholder="请输入真实姓名"/>
        </td>
        <td>
          <span id="span5"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">性别：</td>
        <td class="tdInput">
         	<label> <input type="radio" name="ssex" value="男" checked="true">男</label>
			<label> <input type="radio" name="ssex" value="女">女
        </td>
        
      </tr>
      <tr>
        <td class="tdLabel">电话：</td>
        <td class="tdInput">
          <input type="text" name="sphone" id="sphone" class="input" value="" placeholder="请输入电话号码"/>
        </td>
        <td>
          <span id="span6"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">商铺名：</td>
        <td class="tdInput">
          <input type="text" name="sshopName" id="sshopName" class="input" value="" placeholder="请输入商铺名" onblur="checksshopName()"/>
        </td>
        <td>
          <span id="span7"></span>
        </td>
      </tr>
      <tr>
        <td class="tdLabel">商铺地址：</td>
        <td class="tdInput">
          <input type="text" name="saddr" id="saddr" class="input" value="" placeholder="请输入商铺地址"/>
        </td>
        <td>
          <span id="span8"></span>
        </td>
      </tr>
       <tr>
			<td class="tdLabel">验证码:</td>
			<td class="tdInput">
			    <input type="text" id="checkcode" name="checkcode" class="input" placeholder="请输入验证码" maxlength="4" autocomplete="off">
			 </td>
			 <td>
			    <img src="${pageContext.request.contextPath}/checkImg.action?" id="checkImg" class="captchaImage" src="" onclick="change()" title="换一张">
			</td>
			<td>
	          <span style="color:red;"> <s:actionerror/></span>
	        </td>
		</tr>
      
		<tr>
        <td>&nbsp;</td>
        <td>
          <input type="submit" value="" id="submitReg"/>
        </td>
        <td>&nbsp;</td>
      </tr>
      
    </table>
    </form>
  </div>
</div>
  </body>
  <script>
//切换验证码  
  function change(){  
      var img1=document.getElementById("checkImg");  
      img1.src="${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime(); //加时间戳防止缓存  
  }  
  //ajax异步校验用户名是否存在
  function checkSellerUserName(){
	  var SellerUserName=document.getElementById("susername").value;
	  if(SellerUserName.trim().length != 0){
	  var xhr=createXmlHttp();
	  xhr.onreadystatechange=function(){
		  if(xhr.readyState == 4 && xhr.status == 200){
			  document.getElementById("span1").innerHTML = xhr.responseText;
		  }
	  }
	  xhr.open("GET","${pageContext.request.contextPath}/selleruser_findBySellername.action?time="+new Date().getTime()+"&susername"+susername,true);
	  xhr.send(null);
  }else{
	  document.getElementById("span1").innerHTML="<font color='red'>用户名不能为空！</font>";
	  return false;
  }
}
 
  //异步校验商铺名
  function checksshopName(){
	  var sshopName=document.getElementById("sshopName").value;
	  if(sshopName.trim().length != 0){
	  var xhr=createXmlHttp();
	  xhr.onreadystatechange=function(){
		  if(xhr.readyState == 4 && xhr.status == 200){
			  document.getElementById("span7").innerHTML = xhr.responseText;
		  }
	  }
	  xhr.open("GET","${pageContext.request.contextPath}/selleruser_findBySshopName.action?time="+new Date().getTime()+"&sshopName"+sshopName,true);
	  xhr.send(null);
  }else{
	  document.getElementById("span7").innerHTML="<font color='red'>商铺名不能为空！</font>";
	  return false;
  }
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
  	function checkForm(){
  		/* var loginname=document.getElementById("susername").value;
  		if(loginname == null || loginname == ''){
  			document.getElementById("span1").innerHTML="<font color='red'>用户名不能为空！</font>";
  			return false;
  		} */
  		var loginpass=document.getElementById("spass").value;
  		if(loginpass == null || loginpass == ''){
  			document.getElementById("span2").innerHTML="<font color='red'>密码不能为空！</font>";
  			return false;
  		}
  		// 校验确认密码:
		var repassword = document.getElementById("srepass").value;
		if(repassword != loginpass){
			document.getElementById("span3").innerHTML="<font color='red'>两次输入的密码不一致！</font>";
			return false;
		}
		//校验email
		var email = document.getElementById("semail").value;
		if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(email)){
			document.getElementById("span4").innerHTML="<font color='red'>邮箱格式不正确！</font>";
			return false;
		}
		//校验姓名
		var name=document.getElementById("sname").value;
		if(name==null || name== ''){
			document.getElementById("span5").innerHTML="<font color='red'>姓名不能为空！</font>";
			return false;
		}
		//校验电话
		var telephone=document.getElementById("sphone").value;
		if(telephone==null || telephone== ''){
			document.getElementById("span6").innerHTML="<font color='red'>电话不能为空！</font>";
			return false;
		}
		var addr=document.getElementById("sshopName").value;
		if(addr==null || addr== ''){
			document.getElementById("span7").innerHTML="<font color='red'>商铺名不能为空！</font>";
			return false;
		}
		//校验地址
		var addr=document.getElementById("saddr").value;
		if(addr==null || addr== ''){
			document.getElementById("span8").innerHTML="<font color='red'>商铺地址不能为空！</font>";
			return false;
		}
		
  	}
  	
  </script>
 
</html>
	