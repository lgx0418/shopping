<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>

<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<title>商铺资料显示</title>
		<!--	<link rel="stylesheet" href="../css/left.css" />-->
		<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/main.css" />
		<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/Style1.css" />
		<h1 style="text-align:center; 网上商城 版权所有">&nbsp;</h1>
		<div id=top style="text-align: right;">
			<a href="" style="text-decoration: none;"><s:property value="#session.existSellerUser.susername"/> </a>
			<a href="javascript:window.opener=null;%20window.close();" onclick="logout()" style="text-decoration: none;">退出</a>
		</div>
		<style>
			.body {
				margin: 0;
				padding: 0;
				background-color: #5f5751;
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

						<script type="text/javascript" src="${ pageContext.request.contextPath }/js/dtree.js" ></script>
						
						<script type="text/javascript">
							d = new dTree('d');
							d.add('01', -1, '系统菜单树');
							d.add('0101', '01', '商户信息', '', '', 'mainFrame');
							d.add('010101', '0101', '显示商户信息', '../sellerMsg/viewsellerMsg.html', '', 'mainFrame');
							d.add('010102', '0101', '修改商户信息', '../sellerMsg/modifysellerMsg.html', '', 'mainFrame');
							d.add('0102', '01', '商铺信息', '', '', 'mainFrame');
							d.add('010201', '0102', '商铺资料显示', 'shops.html', '', 'mainFrame');

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
							<span class="requiredField"></span>商铺名:
						</th>
						<td>
							<input type="text" id="sellername" name="sshopName" class="text" maxlength="20" disabled="disabled" style="width: 200px;">
						</td>
						
					</tr>
					<tr>
						<th><br><br>
							<span class="requiredField"></span>商户ID：
						</th>
						<td><br><br>
							<input type="text" id="sellerID" name="suid" class="text" maxlength="20" autocomplete="off" disabled="disabled" style="width: 200px;">
						</td>
					</tr>

					<tr>
						<th><br><br>
							<span class="requiredField"></span>商铺所在地：
						</th>
						<td><br><br>
							<input type="text" id="selleradress" name="saddr" class="text" maxlength="100" disabled="disabled" style="width: 200px;">
						</td>
					</tr>
				
				
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

							</div>
						</td>
					</tr>
				</tbody>
			</table>

			</form>
			
		</div>	<div class="foot"><center>版权所有</center></div>
		
	<script type="text/javascript">
		function logout(){
			if(confirm("确定要退出吗？")){
				top.location="${ pageContext.request.contextPath }/selleruser_goBack.action";
				return false;
			}
		}
	</script>
	</body>

</html>