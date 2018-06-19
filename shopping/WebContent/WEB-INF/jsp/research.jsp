<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上商城</title>
<link href="${ pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${ pageContext.request.contextPath }/css/product.css" rel="stylesheet" type="text/css"/>
<link href="${ pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css"/>
</head>
	<body style="margin-top: -35px;">
		
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
<div class="container research">
	<div style="position: absolute; margin-top: -17px;margin-left: 50px;">
				<img src="${ pageContext.request.contextPath }/image/r___________renleipic_01/11.gif" />
			</div>
	
        <style>
*{outline:none;}
.b2{margin:30px 0 -5px 0;position:relative;border:0px solid red; }
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

<div class="container productList">
	<div id="newProduct" class="research">
					<div class="title">
						<strong>搜索出以下商品：</strong>
						<a  target="_blank"></a>
					</div>
			</div>
	
<div class="span24">
			
	
				<div class="span180 last" >
			
			<form id="productForm" action="" method="get">
				<input type="hidden" id="brandId" name="brandId" value="">
				<input type="hidden" id="promotionId" name="promotionId" value="">
				<input type="hidden" id="orderType" name="orderType" value="">
				<input type="hidden" id="pageNumber" name="pageNumber" value="1">
				<input type="hidden" id="pageSize" name="pageSize" value="20">
					
				<div id="result" class="result table clearfix">
						<ul>
									<li>
										<a href="product.htm">
											<img src="${ pageContext.request.contextPath }/image/dress/dress1.jpg" width="170" height="170"  style="display: inline-block;">
											   
											<span style='color:green'>
											连衣裙
											</span>
											 
											<span class="price">
												价格：99元
											</span>
											 
										</a>
									</li>
									
						</ul>
				</div>
					</div>
<div class="pagination">
			<span class="firstPage">&nbsp;</span>
			<span class="previousPage">&nbsp;</span>
				<span class="currentPage">1</span>
				<a href="javascript: $.pageSkip(2);">2</a>
			<a class="nextPage" href="javascript: $.pageSkip(2);">&nbsp;</a>
			
			<a class="lastPage" href="javascript: $.pageSkip(2);">&nbsp;</a>
	</div>

</div>

	</body>
</html>
