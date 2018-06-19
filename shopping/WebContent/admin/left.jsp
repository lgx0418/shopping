<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
 <link href="${pageContext.request.contextPath }/css/lefta.css" rel="stylesheet" type="text/css"/> 
<link  href="${pageContext.request.contextPath }/css/dtreea.css" rel="StyleSheet" type="text/css" /> 
<style>
body{
BACKGROUND-COLOR:lightgoldenrodyellow;
}
</style>
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0" bgcolor="lightgoldenrodyellow">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0" bgcolor="lightgoldenrodyellow">
  <tr>
    <td>
<div class="dtree">
	<a href="javascript: d.openAll();" >展开所有</a> | <a href="javascript: d.closeAll();" >关闭所有</a>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtreea.js"></script>
	<script type="text/javascript">
		/* d = new dTree('d');
		d.add('01',-1,'系统菜单树');
		d.add('0101','01','用户管理','','','mainFrame');
		d.add('010101','0101','用户管理','${pageContext.request.contextPath}/userAdmin_findAll.action?page=1','','mainFrame');
		d.add('0102','01','一级分类管理','','','mainFrame');
		d.add('010201','0102','一级分类管理','${pageContext.request.contextPath}/adminCategory_findAll.action','','mainFrame');
		d.add('0103','01','二级分类管理');
		d.add('010301','0103','二级分类管理','${pageContext.request.contextPath}/adminCategorySecond_findAll.action?page=1','','mainFrame');
		d.add('0104','01','商品管理');
		d.add('010401','0104','商品管理','${pageContext.request.contextPath}/adminProduct_findAll.action?page=1','','mainFrame');
		d.add('0105','01','订单管理');
		d.add('010501','0105','订单管理','${pageContext.request.contextPath}/adminOrder_findAll.action?page=1','','mainFrame');
		document.write(d); */
		d = new dTree('d');
		d.add('01',-1,'系统菜单树');
		d.add('0101','01','用户管理','','','mainFrame');
		d.add('010101','0101','用户管理','admin/user/list.jsp','','mainFrame');
		d.add('010102','0101','商户管理','admin/selleruser/list.jsp','','mainFrame');
		d.add('0102','01','一级分类管理','','','mainFrame');
		d.add('010201','0102','一级分类管理','${pageContext.request.contextPath}/adminCategory_findAll.action','','mainFrame');
		d.add('0103','01','二级分类管理');
		d.add('010301','0103','二级分类管理','${pageContext.request.contextPath}/adminCategorySecond_findAll.action?page=1','','mainFrame');
		d.add('0104','01','商品管理');
		d.add('010401','0104','商品种类管理','${pageContext.request.contextPath}/adminProduct_findAll.action?page=1','','mainFrame');
		d.add('0105','01','订单管理');
		d.add('010501','0105','订单管理','admin/order/orderlist.jsp','','mainFrame');
		//d.add('010502','0105','商品销售统计','admin/order/saleslist.jsp','','mainFrame');
		d.add('010503','0105','商品销售额统计','admin/order/salesamountlist.jsp','','mainFrame');
		document.write(d);
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
