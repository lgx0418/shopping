<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>修改商户信息</title>
		<!--	<link rel="stylesheet" href="../css/left.css" />-->
		<link rel="stylesheet" href=".../css/main.css" />
<link rel="stylesheet" href="../../css/Style1.css" />
		<h1 style="text-align:center; ">商户首面</h1>
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
		
	</head>

		<body style="background-image: url(../../image/r___________renleipic_01/88.jpg); ">
		<table width="200px" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="12"></td>
			</tr>
		</table>
		<table width="200px" border="0">
			<tr>
				<td>
					<div class="dtree" style=" height: 520px; background-color: lightgoldenrodyellow;">

						<a href="javascript: d.openAll();"style="text-decoration: none;">展开所有</a> |
						<a href="javascript: d.closeAll();"style="text-decoration: none;">关闭所有</a>

						<script type="text/javascript" src="../../js/dtree.js"></script>
				
						<script type="text/javascript">
						d = new dTree('d');
							d.add('01', -1, '系统菜单树');
							d.add('0101', '01', '商户信息', '', '', 'mainFrame');
							d.add('010101', '0101', '显示商户信息', 'viewsellerMsg.html', '', 'mainFrame');
							d.add('010102', '0101', '修改商户信息', 'modifysellerMsg.html', '', 'mainFrame');
							d.add('0102', '01', '商铺信息', '', '', 'mainFrame');
							d.add('010201', '0102', '商铺资料显示', '../shops/shops.html', '', 'mainFrame');

							d.add('0103','01','订单信息');
		d.add('010301','0103','未处理订单','../order/outstandingorder.html','','mainFrame');
	d.add('010302','0103','已处理订单','../order/solvedorder.html','','mainFrame');
							d.add('0104', '01', '商品信息');
							d.add('010401', '0104', '商品信息', '../product/product.html', '', 'mainFrame');
							document.write(d);
						</script>
					</div>
				</td>
			</tr>
		</table>
<div class=right >
			<center>欢迎进入在线购物商城商户页面</center>
		</div>	<div class="foot"><center>版权所有</center></div>
	</body>
</html>
