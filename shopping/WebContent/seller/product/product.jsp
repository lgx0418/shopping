<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>

	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>商品信息 首页</title>
		<link rel="stylesheet" href="../../css/main.css" />
		<link rel="stylesheet" href="../../css/Style1.css" />
		<h1 style="text-align:center; ">&nbsp;</h1>
		<div id=top style="text-align: right;">
			<a href="" style="text-decoration: none;">用户名 </a>
			<a href="" style="text-decoration: none;">退出</a>
		</div>
		<style>
			.body {
				margin: 0;
				padding: 0;
				background-color: lightgoldenrodyellow;
			}
			
			.right {
				width: 1150px;
				height: 520px;
				position: absolute;
				top: 125px;
				left: 205px;
				float: right;
				background-color: lightyellow;
			}
			
			a {
				text-decoration: none;
			}
		</style>
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
		<script type="text/javascript">
			function addProduct() {
				window.location.href = "";
			}
		</script>
	</HEAD>

	<body>

			<body style="background-image: url(../../image/r___________renleipic_01/88.jpg); ">
			<br>
			<table width="200px" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="12"></td>
				</tr>
			</table>
			<table width="200px" border="0">
				<tr>
					<td>
						<div class="dtree" style=" height: 520px; background-color: lightgoldenrodyellow;">

							<a href="javascript: d.openAll();">展开所有</a> |
							<a href="javascript: d.closeAll();">关闭所有</a>

							<script type="text/javascript" src="../../js/dtree.js"></script>
							
							<script type="text/javascript">
								d = new dTree('d');
								d.add('01', -1, '系统菜单树');
								d.add('0101', '01', '商户信息', '', '', 'mainFrame');
								d.add('010101', '0101', '显示商户信息', '../sellerMsg/viewsellerMsg.html', '', 'mainFrame');
								d.add('010102', '0101', '修改商户信息', '../sellerMsg/modifysellerMsg.html', '', 'mainFrame');
								d.add('0102', '01', '商铺信息', '', '', 'mainFrame');
								d.add('010201', '0102', '商铺资料显示', '../shops/shops.html', '', 'mainFrame');

								d.add('0103', '01', '订单信息');
								d.add('010301', '0103', '未处理订单', '../order/outstandingorder.html', '', 'mainFrame');
								d.add('010302', '0103', '已处理订单', '../order/solvedorder.html', '', 'mainFrame');
								d.add('0104', '01', '商品信息');
								d.add('010401', '0104', '商品信息', 'product.html', '', 'mainFrame');
								document.write(d);
							</script>
						</div>
					</td>
				</tr>
			</table>
			<div class="right">

				<form id="Form1" name="Form1" action="" method="post">
					<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="lightgoldenrodyellow" border="0">
						<TBODY>
							<tr>
								<td class="ta_01" align="center" bgColor="lightyellow">
									<strong>商品信息</strong>
								</TD>
							</tr>
							<tr bgcolor="lightyellow">
								<td class="ta_01" align="right">
									<!--						<button type="button" id="add" name="add" value="添加" class="button_add" onclick="addProduct()">
&#28155;&#21152;
</button>-->
									<a href="add.html">
										<button type="button" id="add" name="add" value="添加" class="button_add" onclick="add.html">
&#28155;&#21152;
</button></a>
								</td>
							</tr>
							<tr>
								<td class="ta_01" align="center" bgColor="lightyellow">
									<table cellspacing="0" cellpadding="1" rules="all" bordercolor="gray" border="1" id="DataGrid1" style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: ; WORD-WRAP: break-word">
										<tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: lightgoldenrodyellow">

											<td align="center" width="18%">
												序号
											</td>
											<td align="center" width="17%">
												商品图片
											</td>
											<td align="center" width="17%">
												商品名称
											</td>
											<td align="center" width="17%">
												商品价格
											</td>
											<td align="center" width="17%">
												是否热门
											</td>
											<td width="7%" align="center">
												编辑
											</td>
											<td width="7%" align="center">
												删除
											</td>
										</tr>
										<!--<s:iterator var="p" value="pageBean.list" status="status">-->
										<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = 'lightyellow';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="18%">
												<!--<s:property value="#status.count"/>-->
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="17%">
												<img width="40" height="45" src="">
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="17%">
												<!--<s:property value="#p.pname"/>-->
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="17%">
												<!--<s:property value="#p.shop_price"/>-->
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="17%">
												<!--<s:if test="#p.is_hot==1">-->
												是
												<!--</s:if>
												<s:else>-->
												否
												<!--</s:else>-->
											</td>
											<td align="center" style="HEIGHT: 22px">
												<a href="edit.html" />
												<img src="../../images/i_edit.gif" border="0" style="CURSOR: hand">
												</a>
											</td>

											<td align="center" style="HEIGHT: 22px">
												<a href="">
													<img src="../../images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
												</a>
											</td>
										</tr>
										
									</table>
								</td>
							</tr>
							<tr align="center">
								<td colspan="7">
									第/页
									<!--	第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页 -->
									<!--<s:if test="pageBean.page != 1">-->
									<a href="#">首页</a>|
									<a href="#">上一页</a>|

									<a href="#">下一页</a>|
									<a href="#">尾页</a>|
									<!--<a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=1">首页</a>|
								<a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
							</s:if>
							<s:if test="pageBean.page != pageBean.totalPage">
								<a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
								<a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|-->
									<!--</s:if>-->
								</td>
							</tr>
						</TBODY>
					</table>
				</form>
			</div>
			<div class="foot">
				<center>版权所有</center>
			</div>
		</body>

</HTML>