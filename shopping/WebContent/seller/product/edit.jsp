<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="../../css/Style1.css" />
		<title>修改商品信息</title>
		<link rel="stylesheet" href="../../css/main.css" />

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
			a{
				text-decoration: none;
			}
		</style>
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
		<script type="text/javascript">
			function addProduct(){
				window.location.href = "${pageContext.request.contextPath}/adminProduct_addPage.action";
			}
		</script>
	</HEAD>
	
		<!--  -->	<body style="background-image: url(../../image/r___________renleipic_01/88.jpg); ">
		<br><table width="200px" border="0" cellspacing="0" cellpadding="0">
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
						<!--<script type="text/javascript">
							d = new dTree('d');
							d.add('01', -1, '系统菜单树');
							d.add('0101', '01', '商户信息', '', '', 'mainFrame');
							d.add('010101', '0101', '显示商户信息', '${pageContext.request.contextPath}/userAdmin_findAll.action?page=1', '', 'mainFrame');
							d.add('010102', '0101', '修改商户信息', '${pageContext.request.contextPath}/userAdmin_findAll.action?page=1', '', 'mainFrame');
							d.add('0102', '01', '商铺信息', '', '', 'mainFrame');
							d.add('010201', '0102', '商铺资料显示', '${pageContext.request.contextPath}/adminCategory_findAll.action', '', 'mainFrame');

							d.add('0103', '01', '订单信息');
							d.add('010301', '0103', '订单信息', '${pageContext.request.contextPath}/adminProduct_findAll.action?page=1', '', 'mainFrame');
							d.add('0104', '01', '商品信息');
							d.add('010401', '0104', '商品信息', '${pageContext.request.contextPath}/adminOrder_findAll.action?page=1', '', 'mainFrame');
							document.write(d);
						</script>-->
						<script type="text/javascript">
							d = new dTree('d');
							d.add('01', -1, '系统菜单树');
							d.add('0101', '01', '商户信息', '', '', 'mainFrame');
							d.add('010101', '0101', '显示商户信息', '../sellerMsg/viewsellerMsg.html', '', 'mainFrame');
							d.add('010102', '0101', '修改商户信息', '../sellerMsg/modifysellerMsg.html', '', 'mainFrame');
							d.add('0102', '01', '商铺信息', '', '', 'mainFrame');
							d.add('010201', '0102', '商铺资料显示', '../shops/shops.html', '', 'mainFrame');

							d.add('0103','01','订单信息');
		d.add('010301','0103','未处理订单','../order/outstandingorder.html','','mainFrame');
	d.add('010302','0103','已处理订单','../order/solvedorder.html','','mainFrame');
							d.add('0104', '01', '商品信息');
							d.add('010401', '0104', '商品信息', 'product.html', '', 'mainFrame');
							document.write(d);
						</script>
					</div>
				</td>
			</tr>
		</table>
		<div class="right">
		<form id="userAction_save_do" name="Form1" action="" method="post" enctype="multipart/form-data">
			<input type="hidden" name="pid" value="">
			<input type="hidden" name="image" value=""/>
			
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 0px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="lightyellow" colSpan="4"
						height="26">
						<strong><STRONG>编辑商品</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="lightgoldenrodyellow" class="ta_01">
						商品名称：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="pname" value=""class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="lightgoldenrodyellow" class="ta_01">
						是否热门：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						
						<select name="is_hot">
							<option value="1" selected>是</option>
							<option value="0" selected>否</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="lightgoldenrodyellow" class="ta_01">
						市场价格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="market_price" value=""class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="lightgoldenrodyellow" class="ta_01">
						商城价格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="shop_price" value="" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="lightgoldenrodyellow" class="ta_01">
						商品图片：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="file" name="upload" />
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="lightgoldenrodyellow" class="ta_01">
						所属的二级分类：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="categorySecond.csid">
							
								<option value="">男装</option>
							
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="lightgoldenrodyellow" class="ta_01">
						商品描述：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea name="pdesc" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="lightgoldenrodyellow" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" value="确定" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
	<!--					<a href="product.html"><button>返回</button></a>-->
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
		</div>
				<div class="foot"><center>版权所有</center></div>
	</body>
</HTML>