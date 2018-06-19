<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>
<link href="${ pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${ pageContext.request.contextPath }/css/product.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${ pageContext.request.contextPath }/js/myfocus-2.0.1.min.js"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/nav.css" />
<script type="text/javascript" src="${ pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>

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
<div class="container productList">
		<div class="catList">
						
						<ul class="clearfix">
							<h2 style="font-size: 18px;text-align: center;border-bottom: 1px solid #DF9A07;color: #DF9A07;">主题市场</h2>
							<s:iterator value="#session.cList" var="c">
								<li class="J_MenuItem">
									<h3 class="itemtit"><span><s:property value="#c.cname"/> </span></h3>
									<p class="itemCol">
										<s:iterator value="#c.categorySeconds" var="cs">
											<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property value="#cs.csname"/></a>&nbsp;&nbsp;<!-- <a href="#">精品男装 </a>&nbsp;&nbsp; <a href="#">换季新品 </a> -->
										</s:iterator>
									</p>
								</li>
							</s:iterator>
						</ul>
			</div>
		<div class="span18 last">
				<div>
					<span style='color:#D3520C;margin:20px 30px;font-size:18px;'>
					
					以下是<%-- <s:iterator value="#session.cList" var="c">
							<s:if test="">
							</s:if>
						</s:iterator> --%>
					分类的商品：
					</span>
				</div>
			<form id="productForm" action="#" method="get">
				
					
				<div id="result" class="result table clearfix">
					<br/>
						<ul>
							<s:iterator value="pageBean.list" var="p">
									<li>
										<a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>">
											<img src="${ pageContext.request.contextPath }/<s:property value="#p.image"/>" width="170" height="170"  style="display: inline-block;">
											<span style='color:black'>
												<s:property value="#p.pname"/>
											</span>
											<span class="price">
												价格：<s:property value="#p.shop_price"/> 元
											</span>
											 
										</a>
									</li>
							</s:iterator>
						</ul>
				</div>
				<div class="pagination">
					<span>第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页</span>
					<!--一级分类的分页  -->
					<s:if test="cid != null">
						<s:if test="pageBean.page != 1">
							<!--首页  -->
							<a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=1" class="firstPage">&nbsp;</a>
							<!--上一页  -->
							<a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
						</s:if>		
						<s:iterator var="i" begin="1" end="pageBean.totalPage">
							<s:if test="pageBean.page != #i">
								<a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
							</s:if>
							<s:else>
								<span class="currentPage"><s:property value="#i"/></span>
							</s:else>
						</s:iterator>
						<s:if test="pageBean.page != pageBean.totalPage">
							<!-- 下一页 -->
							<a class="nextPage" href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
							<!-- 最后一页 -->
							<a class="lastPage" href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
						</s:if>	
					</s:if>
					
					<!--二级分类的分页  -->
					<s:if test="csid != null">
						<s:if test="pageBean.page != 1">
							<!--首页  -->
							<a href="${pageContext.request.contextPath}/product_findByCsid.action?csid=<s:property value="csid"/>&page=1" class="firstPage">&nbsp;</a>
							<!--上一页  -->
							<a href="${pageContext.request.contextPath}/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
						</s:if>
						<s:iterator var="i" begin="1" end="pageBean.totalPage">
							<s:if test="pageBean.page != #i">
								<a href="${pageContext.request.contextPath}/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
							</s:if>
							<s:else>
								<span class="currentPage"><s:property value="#i"/></span>
							</s:else>
						</s:iterator>
						<s:if test="pageBean.page != totalPage">
							<!-- 下一页 -->
							<a class="nextPage" href="${pageContext.request.contextPath}/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
							<!-- 最后一页 -->
							<a class="lastPage" href="${pageContext.request.contextPath}/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
						</s:if>
					</s:if>
				</div>
			</form>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
			</div>
	<div class="span24">
		
	</div>
	<div class="span24">
		<div class="copyright">网上商城 版权所有</div>
	</div>
</div>
</body></html>