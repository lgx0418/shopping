<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>

<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css">


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
<div class="container cart">
	<s:if test="#session.cart.cartItems.size() != 0">
		<div class="span24">
			<div class="step step1">
				
			</div>
				<table>
					<tbody><tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
					<s:iterator value="#session.cart.cartItems" var="cartItem">
						<tr>
							<td width="60">
								<input type="hidden" name="id" value="22">
								<a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#cartItem.product.pid"/>">
									<img src="${ pageContext.request.contextPath }/<s:property value="#cartItem.product.image"/>">
								</a>
							</td>
							<td>
								<a target="_blank"> <s:property value="#cartItem.product.pname"/></a>
							</td>
							<td>
								￥<s:property value="#cartItem.product.shop_price"/>
							</td>
							<td class="quantity" width="60">
								<%-- <input id="count" name="count" value="<s:property value="#cartItem.count"/>" maxlength="4" onpaste="return false;" type="text"/> --%>
								<s:property value="#cartItem.count"/>
							</td>
							<td width="140">
								<span class="subtotal">￥<s:property value="#cartItem.subtotal"/></span>
							</td>
							<td>
								<a href="${ pageContext.request.contextPath }/cart_deleteCart.action?pid=<s:property value="#cartItem.product.pid"/>" onclick="return confirm('确定删除吗？');" class="delete">删除</a>
							</td>
						</tr>
						</s:iterator>
				</tbody></table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
					合计金额: <strong id="effectivePrice">￥<s:property value="#session.cart.total"/>元</strong>
				</div>
				<div class="bottom">
					<a href="${ pageContext.request.contextPath }/cart_clearCart.action" id="clear" class="clear">清空购物车</a>
					<a href="./order.htm" id="submit" class="submit">提交订单</a>
				</div>
		</div>
	</s:if>
	<s:else>
		<div id="clearCart" style="border: 1px solid orange;width:950px;height: 50px;text-align: center;line-height: 50px;">
			<h3>亲，您还没有添加商品到购物车哦！</h3>
		</div>
	</s:else>
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