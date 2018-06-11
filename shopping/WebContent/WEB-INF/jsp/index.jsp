<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<img src="images/foot03/ll06.png" width="47" height="49" class="hides"/>
				<img src="images/foot03/l06.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a href="">
				<img src="images/foot03/ll03.png"  width="47" height="49" class="hides"/>
				<img src="images/foot03/l03.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a href="">
					<img src="images/foot03/ll02.png" width="166" height="49" class="hides"/>
				<img src="images/foot03/l04.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a class="youhui">
				<img src="images/foot03/l02.png" width="47" height="49" class="shows" />
				<img src="images/foot03/zfew.jpg" width="196" height="205" class="hides" usemap="#taklhtml"/>
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
			<a href="./index.htm">
				<img src="./image/r___________renleipic_01/logo.gif" alt="网上商城"/>
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
					<li>
						<a href="./clothes.htm">女装男装</a>
						|
					</li>
					<li>
						<a href="./shoes.htm">鞋靴箱包</a>
						|
					</li>
					<li>
					<a href="./sport.htm">运动户外</a>
						|
					</li>
					<li>
							<a href="./jewellery.htm">珠宝配饰</a>|
					</li>
				
					<li>
							<a href="./digital.htm">手机数码</a>
						|
					</li>
					<li>
						<a href="./electrical.htm">家电办公</a>
						|
					</li>
					
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
<!--<button id="b2_btn1" class="btn btn_1">
	搜索
	</button>-->
<input type="button" id="b2_btn1" class="btn btn_1" value="搜索" onclick="location.href='research.htm'"> 
<!--<button id="b2_btn2" class="btn btn_1 btn_2"><span class="icon-cog2"></span></button>-->
</div>
</div>

<div class="container index">
		
		<!--热门商品-->
		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
					<div class="title" style="width: 950px;">
						<strong>热门商品</strong>
						<!-- <a  target="_blank"></a> -->
					</div>
					<!--导航栏-->
					<div class="catList">
						
						<ul class="clearfix">
							<h2 style="font-size: 18px;text-align: center;border-bottom: 1px solid #DF9A07;color: #DF9A07;">主题市场</h2>
							
							<li class="J_MenuItem">
								<h3 class="itemtit"><span>女装男装 </span></h3>
								<p class="itemCol"><a href="clothes_fashion.htm">潮流女装</a>&nbsp;&nbsp;<a href="#">精品男装 </a>&nbsp;&nbsp; <a href="#">换季新品 </a></p>
							</li>
							<li class="J_MenuItem">
								<h3 class="itemtit"><span>鞋靴箱包</span></h3>
								<p class="itemCol"> <a href="#">男鞋 </a>&nbsp;&nbsp; <a href="#">女鞋 </a>&nbsp;&nbsp; <a href="#">服饰配件 </a></p>
							</li>
							<li class="J_MenuItem">
								<h3 class="itemtit"><span>运动户外</span></h3>
								<p class="itemCol"><a href="#">运动鞋</a>&nbsp;&nbsp; <a href="#">运动服</a>&nbsp;&nbsp; <a href="#">户外装备 </a></p>
							</li>
							<li class="J_MenuItem">
								<h3 class="itemtit"><span>珠宝配饰 </span></h3>
								<p class="itemCol"><a href="#">珠宝首饰 </a>&nbsp;&nbsp; <a href="#">时尚饰品 </a>&nbsp;&nbsp; <a href="#">品质手表 </a></p>
							</li>
							<li class="J_MenuItem">
								<h3 class="itemtit"><span>手机数码 </span></h3>
								<p class="itemCol"><a href="#">手机 </a>&nbsp;&nbsp; <a href="#">电脑 </a>&nbsp;&nbsp; <a href="#">相机 </a></p>
							</li>
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
						<strong>最新商品</strong>
						<a  target="_blank"></a>
					</div>
					<ul class="tab">
	
					</ul>
					
						 <ul class="tabContent" style="display: block;">
									<li>
										<a  href="clothes.htm" target="_blank"><img src="image/women/women (10).png" data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg" style="display: block;"></a>									</li>
									<li>
										<a  target="_blank"><img src="image/women/women (11).png" style="display: block;"></a>									</li>
									
									<li>
										<a target="_blank"><img src="image/women/women (13).jpg" style="display: block;"></a>									</li>
									<li>
										<a target="_blank"><img src="image/women/women (1).jpg" style="display: block;"></a>									</li>
									<li>
										<a target="_blank"><img src="image/women/women (16).jpg" style="display: block;"></a>									</li>
									<li>
										<a target="_blank"><img src="image/men/men (8).png" style="display: block;"></a>									</li>
									<li>
										<a  target="_blank"><img src="image/men/men (20).png" style="display: block;"></a>
									<li>
										<a  target="_blank"><img src="image/men/men (7).png"" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>
									</li>
									<li>
										<a  target="_blank"><img src="image/shoe/shoe (1).jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>
									</li>
									<li>
										<a  target="_blank"><img src="image/shoe/shoe (1).png" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>
									</li>
						</ul>
				<ul class="tabContent" style="display: none;">
									<li>
										<a  href="clothes.htm" target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/b04a22f5-267d-4e33-ac58-dda941eeaf84-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b04a22f5-267d-4e33-ac58-dda941eeaf84-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/ca3043f5-dbb0-4a03-9bb6-8274f78b5d7e-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/ca3043f5-dbb0-4a03-9bb6-8274f78b5d7e-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/a2ac0816-37e4-477a-b179-e64f71252cf5-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/a2ac0816-37e4-477a-b179-e64f71252cf5-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/fbb80ec8-a1d3-49de-b83b-79eae4b1ff69-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/fbb80ec8-a1d3-49de-b83b-79eae4b1ff69-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/bb99deac-0b33-48f1-a3ad-e8310516be07-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/bb99deac-0b33-48f1-a3ad-e8310516be07-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/7b3c0647-1016-4d13-8b84-4d63818e1179-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/7b3c0647-1016-4d13-8b84-4d63818e1179-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/3c79f82f-f136-48aa-9e81-7e10fbb3de2a-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/3c79f82f-f136-48aa-9e81-7e10fbb3de2a-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/b998f840-91fc-41b6-b73d-70587babf760-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b998f840-91fc-41b6-b73d-70587babf760-thumbnail.jpg" style="display: block;"></a>
									</li>
						</ul>
						<ul class="tabContent" style="display: none;">
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/9f164e13-bcaa-48a6-9b35-0ca96629f614-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/9f164e13-bcaa-48a6-9b35-0ca96629f614-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/1a3ad7de-7ee9-4530-b89a-46375219beb5-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/1a3ad7de-7ee9-4530-b89a-46375219beb5-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/7acae4ac-5909-4142-8b20-19c5462859d6-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/7acae4ac-5909-4142-8b20-19c5462859d6-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/ea566af4-0cdb-4017-a8c7-27e407794204-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/ea566af4-0cdb-4017-a8c7-27e407794204-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/dea31d42-fa3e-4b69-a631-51ca7c79f032-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/dea31d42-fa3e-4b69-a631-51ca7c79f032-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/1c81f492-a3d7-4c06-8658-bc2c76808cd3-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/1c81f492-a3d7-4c06-8658-bc2c76808cd3-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/f1174ca6-6bdf-4d0b-86e6-5455bc8e89ad-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/f1174ca6-6bdf-4d0b-86e6-5455bc8e89ad-thumbnail.jpg" style="display: block;"></a>
									</li>
									<li>
										<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/2971c96e-9f11-4491-9faf-9ea7e1fec53c-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/2971c96e-9f11-4491-9faf-9ea7e1fec53c-thumbnail.jpg" style="display: block;"></a>
									</li>
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
        <li>
            <a>
               <img src="${pageContext.request.contextPath}/image/women/cloths01.jpg" width="157" height="200" />
                <div class="info">
                <h4 style="color:black">ins超火连衣裙</h4>
                </div>
                <s class="line"></s>
                <i class="mask"></i>
            </a>
        </li>
        <li class="big">
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
        </li>
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