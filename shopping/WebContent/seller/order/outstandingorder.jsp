<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>未处理订单页面</title>
		<link rel="stylesheet" href="../../css/Style1.css" />
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
		<!--<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
		<script type="text/javascript">
			function showDetail(oid){
				var but = document.getElementById("but"+oid);
				var div1 = document.getElementById("div"+oid);
				if(but.value == "订单详情"){
					// 1.创建异步对象
					var xhr = createXmlHttp();
					// 2.设置监听
					xhr.onreadystatechange = function(){
						if(xhr.readyState == 4){
							if(xhr.status == 200){
								
								div1.innerHTML = xhr.responseText;
							}
						}
					}
					// 3.打开连接
					xhr.open("GET","${pageContext.request.contextPath}/adminOrder_findOrderItem.action?oid="+oid+"&time="+new Date().getTime(),true);
					// 4.发送
					xhr.send(null);
					but.value = "关闭";
				}else{
					div1.innerHTML = "";
					but.value="订单详情";
				}
				
			}
			function createXmlHttp(){
				   var xmlHttp;
				   try{ // Firefox, Opera 8.0+, Safari
				        xmlHttp=new XMLHttpRequest();
				    }
				    catch (e){
					   try{// Internet Explorer
					         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
					      }
					    catch (e){
					      try{
					         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
					      }
					      catch (e){}
					      }
				    }

					return xmlHttp;
				 }
		</script>-->
	</HEAD>
	
	
	
	
	
	<body style="background-image: url(../../image/r___________renleipic_01/88.jpg); ">
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
						
						<script type="text/javascript">
							d = new dTree('d');
							d.add('01', -1, '系统菜单树');
							d.add('0101', '01', '商户信息', '', '', 'mainFrame');
							d.add('010101', '0101', '显示商户信息', '../sellerMsg/viewsellerMsg.html', '', 'mainFrame');
							d.add('010102', '0101', '修改商户信息', '../sellerMsg/modifysellerMsg.html', '', 'mainFrame');
							d.add('0102', '01', '商铺信息', '', '', 'mainFrame');
							d.add('010201', '0102', '商铺资料显示', '../shops/shops.html', '', 'mainFrame');

							d.add('0103','01','订单信息');
							d.add('010301','0103','未处理订单','outstandingorder.html','','mainFrame');
							d.add('010302','0103','已处理订单','solvedorder.html','','mainFrame');
							d.add('0104', '01', '商品信息');
							d.add('010401', '0104', '商品信息', '../product/product.html', '', 'mainFrame');
							document.write(d);
						</script>
					</div>
				</td>
			</tr>
		</table>
		<div class="right">
		<form id="Form1" 
			name="Form1" >
			<!--<form id="Form1" 
			name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">-->
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="">
							<strong>订单列表</strong>
						</TD>
					</tr>
					
					
					
					
					<tr>
						<td class="ta_01" align="center" bgColor="lightyellow">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: lightyellow; WORD-WRAP: break-word">
								
								<tr></tr>
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: lightgoldenrodyellow">

									<td align="center" width="10%">
										序号
									</td>
									<td align="center" width="10%">
										订单编号
									</td>
									<td align="center" width="10%">
										订单金额
									</td>
									<td align="center" width="10%">
										收货人
									</td>
									<td align="center" width="10%">
										订单状态
									</td>
									<td align="center" width="10%">
										是否发货
									</td>
									<td align="center" width="40%">
										订单详情
									</td>
								</tr>
									<!--<s:iterator var="o" value="pageBean.list" status="status">-->
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = 'lightyellow';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="18%">
												<!--<s:property value="#status.count"/>-->
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<!--<s:property value="#o.oid"/>-->
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<!--<s:property value="#o.total"/>-->
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<!--<s:property value="#o.name"/>-->
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
											<!--	<s:if test="#o.state==1">
													未付款
												</s:if>
												<s:if test="#o.state==2">
													<a href="${ pageContext.request.contextPath }/adminOrder_updateState.action?oid=<s:property value="#o.oid"/>"><font color="blue">发货</font></a>
												</s:if>
												<s:if test="#o.state==3">
													等待确认收货
												</s:if>
												<s:if test="#o.state==4">
													订单完成
												</s:if>-->
											
											</td>
												<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:property value="#o.oid"/>
											</td>
											<td align="center" style="HEIGHT: 22px">
												<input type="button" value="订单详情" id="but<s:property value="#o.oid"/>
												<!--<input type="button" value="订单详情" id="but<s:property value="#o.oid"/>" onclick="showDetail(<s:property value="#o.oid"/>)"/>-->
												<div id="div<s:property value="#o.oid"/>
													
												</div>
											</td>
							
										</tr>
									</s:iterator>	
							</table>
						</td>
					</tr>
					<tr align="center">
						<td colspan="7">
							
						
						<!--	第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页 -->
							<!--<s:if test="pageBean.page != 1">
								<a href="">首页</a>|
								<a href="">上一页</a>|
							</s:if>
							<s:if test="pageBean.page != pageBean.totalPage">
								<a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
								<a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
							</s:if>-->
							<a href="#">首页</a>|
								<a href="#">上一页</a>|
							
							
								<a href="#">下一页</a>|
								<a href="#">尾页</a>|
							
						</td>
					</tr>

						</td>
					</tr>
				</TBODY>
			</table>
		</form>
	</div>
			<div class="foot"><center>版权所有</center></div>
	</body>
</HTML>

