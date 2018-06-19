<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上商城</title>
<link href="${ pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${ pageContext.request.contextPath }/css/product.css" rel="stylesheet" type="text/css"/>
<link href="${ pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${ pageContext.request.contextPath }/js/myfocus-2.0.1.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script>
	//按钮提交
	function saveCart(){
		document.getElementById("cartForm").submit();
	}
	function cartLogin(){
		document.getElementById("cartForm").action="${ pageContext.request.contextPath }/user_loginPage.action";
	}
</script>
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
</style>
</head>
<body style="margin-top: -35px;">

<div id="leftsead">
	<ul>
	     <li>
			<a id="top_btn">
				<img src="${ pageContext.request.contextPath }/images/foot03/ll06.png" width="47" height="49" class="hides"/>
				<img src="${ pageContext.request.contextPath }/images/foot03/l06.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a href="">
				<img src="${ pageContext.request.contextPath }/images/foot03/ll03.png"  width="47" height="49" class="hides"/>
				<img src="${ pageContext.request.contextPath }/images/foot03/l03.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a href="">
					<img src="${ pageContext.request.contextPath }/images/foot03/ll02.png" width="166" height="49" class="hides"/>
				<img src="${ pageContext.request.contextPath }/images/foot03/l04.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a class="youhui">
				<img src="${ pageContext.request.contextPath }/images/foot03/l02.png" width="47" height="49" class="shows" />
				<img src="${ pageContext.request.contextPath }/images/foot03/zfew.jpg" width="196" height="205" class="hides" usemap="#taklhtml"/>
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
	</head>
	<body>
			
	<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="${ pageContext.request.contextPath }/index.action">
				<img src="${ pageContext.request.contextPath }/image/r___________renleipic_01/logo.gif" alt="网上商城"/>
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
</div><div class="container productContent">
		
		<div class="span18 last">
			
			<div class="productImage">
					<a title="" style="outline-style: none; text-decoration: none;" id="zoom" href="#" rel="gallery">
						<div class="zoomPad"><img style="opacity: 1;" title="" class="medium" src="${ pageContext.request.contextPath }/<s:property value="model.image"/>"><div style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;" class="zoomPup"></div><div style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;" class="zoomWindow"><div style="width: 368px;" class="zoomWrapper"><div style="width: 100%; position: absolute; display: none;" class="zoomWrapperTitle"></div><div style="width: 0%; height: 0px;" class="zoomWrapperImage">
							<img src="${ pageContext.request.contextPath }/<s:property value="model.image"/>" 
								style="position: absolute; 
								border: 0px none; 
								display: block; 
								left: -432px; top: 0px;">
						</div>
					</div>
			</div>
	<div style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;" class="zoomPreload">Loading zoom</div></div>
					
					</a>
				
			</div>
			<div class="name"><s:property value="model.pname"/></div>
			<div class="sn">
				<div>编号：<s:property value="model.pid"/></div>
			</div>
			<div class="info">
				<dl>
					<dt>商城价:</dt>
					<dd>
						<strong>￥：<s:property value="model.shop_price"/>元</strong>
							参 考 价：
							<del>￥<s:property value="model.market_price"/>元</del>
					</dd>
				</dl>
					<dl>
						<dt>促销</dt>
						<dd>
								<a target="_blank" title="">限时抢购</a>
						</dd>
					</dl>
					<dl>
						<dt>    </dt>
						<dd>
							<span>    </span>
						</dd>
					</dl>
			</div>
			<form id="cartForm" action="${ pageContext.request.contextPath }/cart_addCart.action" method="post" >
				<input type="hidden" name="pid" value="<s:property value="model.pid"/>"/>
				<div class="action">
						<dl class="quantity">
							<dt>购买数量:</dt>
							<dd>
								<input id="count" name="count" value="1" maxlength="4" onpaste="return false;" type="text"/>
							</dd>
							<dd>
								件
							</dd>
						</dl>
						
					<div class="buy">
						<s:if test="#session.existUser == null">
							<input id="addCart" class="cartLogin" value="亲，您还没有登录呢!" type="submit" onclick="cartLogin()"/>
						</s:if>
						<s:else>
							<input id="addCart" class="addCart" value="加入购物车" type="button" onclick="saveCart()"/>
						</s:else>
					</div>
				</div>
			</form>
			<div id="bar" class="bar">
				<ul>
						<li id="introductionTab">
							<a href="#introduction">商品介绍</a>
						</li>
						
				</ul>
			</div>
				
				<div id="introduction" name="introduction" class="introduction">
					<div class="title">
						<strong><s:property value="model.pdesc"/></strong>
					</div>
					<div>
						<img src="${ pageContext.request.contextPath }/<s:property value="model.image"/>">
					</div>
					
				</div>
				
				
				
		</div>
	</div>	
	</div>
	</div>
	
	</body>
</html>
