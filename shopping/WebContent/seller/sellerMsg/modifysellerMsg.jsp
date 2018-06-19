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

		<div class=right>

			<table style="margin-left: 100px;">
				<tbody>
					<tr>
						<th>
							<span class="requiredField">*</span>用户名:
						</th>
						<td>
							<input type="text" id="username" name="username" class="text" maxlength="20" disabled="disabled">
						</td>
						
					</tr>
					<tr>
						<th><br>
							<span class="requiredField">*</span>密&nbsp;&nbsp;码:
						</th>
						<td>
							<input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off" >
						</td>
					</tr>

					<tr>
						<th><br>
							<span class="requiredField">*</span>E-mail:
						</th>
						<td>
							<input type="text" id="email" name="email" class="text" maxlength="200" >
						</td>
					</tr>
					<tr>
						<th><br>
							姓名:
						</th>
						<td>
							<input type="text" name="memberAttribute_1" class="text" maxlength="200" disabled="disabled">
						</td>
					</tr>
					<tr>
						<th><br>
							性别:
						</th>
						<td>
							<span class="fieldSet">
														<label>
															<input type="radio" name="memberAttribute_2"disabled="disabled">男
														</label>
														<label>
															<input type="radio" name="memberAttribute_2" disabled="disabled">女
														</label>
												</span>
						</td>
					</tr>
					<tr>
						<th><br>
							出生日期:
						</th>
						<td>
							<input type="text" name="memberAttribute_3" class="text" onfocus="WdatePicker();" >
						</td>
					</tr>

					<tr>
						<th><br>
							电话号码:
						</th>
						<td>
							<input type="text" name="memberAttribute_5" class="text" maxlength="200" >
						</td>
					</tr>
					<tr>

						<td>

						</td>
					</tr>
					<tr>
						<th>&nbsp;

						</th>

					</tr>
					<tr>
						<th>&nbsp;

						</th>

					</tr>
					<tr>
						<th>&nbsp;

						</th>
						<td>
							<div id="agreement" class="agreement" style="height: 200px;">
<button>修 改</button>     
<a href="viewsellerMsg.html"><button>返 回</button></a>
						</td>
					</tr>
				</tbody>
			</table>

			</form>
			
		</div>	<div class="foot"><center>版权所有</center></div>
	</body>

</html>