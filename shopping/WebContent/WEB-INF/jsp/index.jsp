<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>网上商城</title>
<link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/myfocus-2.0.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/mf-pattern/mF_liuzg.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/mf-pattern/mF_liuzg.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nav.css" />
<script type="text/javascript">
//设置
myFocus.set({
    id:'boxID',
    pattern:'mF_liuzg',
    time:3,
    trigger:'click',
    width:750,
    height:350,
    txtHeight:'default'
});
//弹出广告
	var time;
	function init(){
		//设置显示图片的定时操作
		time = setInterval("showAd()",3000);
	}
	
	//显示图片的函数
	function showAd(){
		//获取广告图片的
		var imgEl = document.getElementById("adv");
		//设置图片的属性(display)让其显示
		imgEl.style.display="block";
		
		//清除显示图片的定时操作
		clearInterval(time);
		
		//设置隐藏广告图片的定时操作
		time = setInterval("hiddenAd()",6000);
	}
	
	//书写隐藏广告图片的函数
	function hiddenAd(){
		//获取广告图片并设置隐藏的属性
		document.getElementById("adv").style.display="none";
		//清除隐藏图片的定时操作
		clearInterval(time);
	}
//关闭广告
function closeAdv(){
	document.getElementById("adv").style.display="none";
}
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{/*font:12px/180% Arial, Helvetica, sans-serif, "新宋体";background:#E7DBB1;*/
  background: url(images/background3.jpg) top center no-repeat; 
    background-size:cover;}

/* leftsead */
#leftsead{width:131px;height:143px;position:fixed;top:258px;right:0px;}
*html #leftsead{margin-top:258px;position:absolute;top:expression(eval(document.documentElement.scrollTop));}
#leftsead li{width:131px;height:53px;}
#leftsead li img{float:right;border-bottom-left-radius:5px;border-top-left-radius:5px;}
#leftsead li a{height:49px;float:right;display:block;min-width:47px;max-width:131px;}
#leftsead li a .shows{display:block;}
#leftsead li a .hides{margin-right:-166px;cursor:pointer;cursor:hand;}
#leftsead li a.youhui .hides{display:none;position:absolute;right:216px;top:2px;}
#adv{
	margin-left: 174px;
	width: 950px;
	height: 360px;
	display: none;
	background: url(image/adv.jpg);
}
</style>
</head>
<body style="margin-top: -35px;" onload="init()">
<div>
	
</div>
<div id="leftsead">
	<ul>
	     <li>
			<a id="top_btn">
				<img src="${pageContext.request.contextPath}/images/foot03/ll06.png" width="47" height="49" class="hides"/>
				<img src="${pageContext.request.contextPath}/images/foot03/l06.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a href="">
				<img src="${pageContext.request.contextPath}/images/foot03/ll03.png"  width="47" height="49" class="hides"/>
				<img src="${pageContext.request.contextPath}/images/foot03/l03.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a href="">
					<img src="${pageContext.request.contextPath}/images/foot03/ll02.png" width="166" height="49" class="hides"/>
				<img src="${pageContext.request.contextPath}/images/foot03/l04.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a class="youhui">
				<img src="${pageContext.request.contextPath}/images/foot03/l02.png" width="47" height="49" class="shows" />
				<img src="${pageContext.request.contextPath}/images/foot03/zfew.jpg" width="196" height="205" class="hides" usemap="#taklhtml"/>
			</a>
		</li>
	
	
	
	</ul>
</div><!--leftsead end-->


<script type="text/javascript">
$(document).ready(function(){

	$("#leftsead a").hover(function(){
		if($(this).prop("className")=="youhui"){
			$(this).children("img.hides").show();
		}else{
			$(this).children("img.hides").show();
			$(this).children("img.shows").hide();
			$(this).children("img.hides").animate({marginRight:'0px'},'slow'); 
		}
	},function(){ 
		if($(this).prop("className")=="youhui"){
			$(this).children("img.hides").hide('slow');
		}else{
			$(this).children("img.hides").animate({marginRight:'-143px'},'slow',function(){$(this).hide();$(this).next("img.shows").show();});
		}
	});

	$("#top_btn").click(function(){if(scroll=="off") return;$("html,body").animate({scrollTop: 0}, 600);});

});
</script>
<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="${ pageContext.request.contextPath }/index.action">
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt="网上商城"/>
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
							<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"/></a>|
						</li>
					</s:iterator>
		</ul>
	</div>


</div>	
<!--定时弹出广告-->
<div id="adv">
	<div id="closeAdv" style="float: right;"> 
		<input type="button" value="关闭广告" onclick="closeAdv()" />
	</div>
</div>
<div class="container research">
	<div style="position: absolute; margin-top: -17px;margin-left: 70px;">
		<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/22.gif" />
	</div>

	
        <style>
*{outline:none;}
.b2{margin: -10px 0 -10px 50px;position:relative;border:0px solid red; }
.b2 .b2_s
   {margin-left: 200px;
    outline: 0;border:2px solid #f60;
    padding:12px;
    padding-left:50px;
    color:#999;
    max-width:20%;
    min-width:50%;
    border-radius:40px;}
.b2 .b2_s:onfocus
   {border:2px solid #f60;
   color: #fff;
    outline: 0; }
.b2 .btn
  {color: #fff;
   background-color: #f60;
   font-family:"Arial";
   border-color: #357ebd;
   display: inline-block;
   padding: 10px 14px;
   margin-bottom: 0;
   font-size: 14px;
   font-weight: normal;
   text-align: center;
   white-space: nowrap;
   vertical-align: middle;
   cursor: pointer;
   border: 1px solid transparent;
   border-radius: 10px;}
/*.b2 .btn_1{margin-top:-2px;border-bottom-right-radius: 0;border-top-right-radius: 0;margin-right: -6px;height:31px;}*/
/*.b2 .btn_2{border-bottom-left-radius: 0;border-top-left-radius: 0;margin-left: -1px;padding:6px 6px;border-bottom-right-radius: 4px;border-top-right-radius: 4px;}*/
/*.b2 .b2_b2_u{position: absolute;top:23px;overflow:hidden;display:none;z-index:10;background:#fff;border: 1px solid #ccc;border: 1px solid rgba(0,0,0,0.15);box-shadow: 0 6px 12px rgba(0,0,0,0.175); -webkit-box-shadow: 0 6px 12px rgba(0,0,0,0.175);padding:5px 10px;border-radius: 3px;}*/
</style>
<div class="b2" id="b2">
	<input class="b2_s" type="text" id="h_search" placeholder="请输入要搜索的商品...">
	<input type="button" id="b2_btn1" class="btn btn_1" value="搜索" onclick="location.href='research.htm'"> 
</div>
</div>

<div class="container index">
		
		<!--热门商品-->
		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
					<div class="title" style="width: 950px;">
						<strong>特卖会场</strong>
						<!-- <a  target="_blank"></a> -->
					</div>
					<!--导航栏-->
					<div class="catList">
						
						<ul class="clearfix">
							<h2 style="font-size: 18px;text-align: center;border-bottom: 1px solid #DF9A07;color: #DF9A07;">主题市场</h2>
							<s:iterator value="#session.cList" var="c">
								<li class="J_MenuItem">
									<h3 class="itemtit"><span><s:property value="#c.cname"/> </span></h3>
									<p class="itemCol">
										<s:iterator value="#c.categorySeconds" var="cs">
											<a href="${pageContext.request.contextPath}/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property value="#cs.csname"/></a>&nbsp;&nbsp;
										</s:iterator>
									</p>
								</li>
							</s:iterator>
						</ul>
					</div>

					<div class="aa" style="float: right;">
					    <div id="boxID"><!--焦点图盒子-->
					      <div class="pic"><!--内容列表-->
					        <ul>
					          <li><a href="#"><img src="${pageContext.request.contextPath}/image/5a.jpg" alt="全球吃货日" width="100%" height="100%"/></a></li>
					          <li><a href="#"><img src="${pageContext.request.contextPath}/image/2a.jpg" alt="特卖会大美人专场" width="100%" height="100%"/></a></li>
					          <li><a href="#"><img src="${pageContext.request.contextPath}/image/1a.jpg" alt="我有个大胆的想法" width="100%" height="100%"/></a></li>
					          <li><a href="#"><img src="${pageContext.request.contextPath}/image/3a.jpg" alt="家具建材会场" width="100%" height="100%"/></a></li>
					          <li><a href="#"><img src="${pageContext.request.contextPath}/image/4a.jpg" alt="夏末秋至，初恋西柚妆" width="100%" height="100%"/></a></li>
					        </ul>
					      </div>
					    </div>
					  </div>
			</div>
		</div>
		<!--最新商品-->
		<div class="span24">
			<div id="newProduct" class="newProduct clearfix">
					<div class="title">
						<strong>热门商品</strong>
						<a  target="_blank"></a>
					</div>
					<ul class="tab">
	
					</ul>
					
						 <ul class="tabContent" style="display: block;">
									<s:iterator value="hList" var="p">
										<li>
											<a  href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>"><img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" style="display: block;" /></a>
										</li>
									</s:iterator>
						</ul>
			</div>
		</div>
		<div class="span24">
		<div class="title" style="width: 950px;height: 40px;background-color: #ea730fb3;font-weight: bold;font-size: 16px;color: white;line-height: 40px;">
			<strong>&nbsp;&nbsp;特价商品</strong>
		</div>
		<!--特价商品手风琴效果-->
		 <div id="subject" class="home-subjects-v2">
    <ul>
    <s:iterator value="bList" var="b">
        <li>
            <a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#b.pid"/>">
               <img src="${pageContext.request.contextPath}/<s:property value="#b.image"/>" width="157" height="200" />
                <div class="info">
                <h4 style="color:black"><s:property value="#b.pname"/></h4>
                </div>
                <s class="line"></s>
                <i class="mask"></i>
            </a>
        </li>
     </s:iterator>
       <%--  <li class="big">
            <a>
               <img src="${pageContext.request.contextPath}/image/women/cloths02.jpg" width="157" height="200" />
                <div class="info">
                <h4 style="color:black">Bershka 男士 2018春夏新款</h4>
                </div>
                <s class="line"></s>    
                <i class="mask"></i>
            </a>
        </li>
        <li>
            <a>
                <img src="${pageContext.request.contextPath}/image/women/shoe01.jpg" width="157" height="200" />
                <div class="info">
               <h4 style="color:black">2018夏季凉鞋时尚</h4>
                </div>
                <s class="line"></s>   
                 <i class="mask"></i>
            </a>
        </li>
        <li>
            <a>
                <img src="${pageContext.request.contextPath}/image/women/lsk01.jpg" width="157" height="200" />
                <div class="info">
               <h4 style="color:black">纪梵希小羊皮口红保湿</h4>
                </div>
                <s class="line"></s>
                <i class="mask"></i>
            </a>
        </li>
        <li>
            <a>
                <img src="${pageContext.request.contextPath}/image/women/lsk02.jpg" width="157" height="200" />
                <div class="info">
                <h4 style="color:black">纪梵希香水</h4>
                </div>
                <i class="mask"></i>
            </a>
        </li> --%>
    </ul>
    </div><!--手风琴效果结束-->
   </div>
		</div>
<div class="container footer">
	
	<div class="span24">
		<div class="copyright">网上商城 版权所有</div>
	
	</div>
</div>

<script type="text/javascript">
        function mouseover(e){
            var list = $('#subject li');
            var target = $(e.target).parents('li');

            list.removeClass('big');
            target.addClass('big');
        }

        (function(){
            var outer = $('#subject');
            outer.find('li').on('mouseover', mouseover);
        })()
</script>
</body>
</html>