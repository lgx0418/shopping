<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
		
	</HEAD>
	<body>
		<br>
		<form id="Form1" name="Form1" >
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="lightgoldenrodyellow">
							<strong>商品销售统计情况</strong>
						</TD>
					</tr>
					<tr>
						<td align="center" class="ta_01">
							<input type="text"  placeholder="请输入商铺编号" style="width: 40%;"/>
							<button type="button"  value="搜索"  >
							<font color="black"><b>查询</b></font>
						
						
					</td>
						
					</tr>
					<tr>
						<td align="center">
							<button type="button"  value="onemonth"  >
							<font color="black"><b>前一个月</b></font>
							<button type="button"  value="threemonth"  >
							<font color="black"><b>前三个月</b></font>
							<button type="button"  value="sixmonth"  >
							<font color="black"><b>前六个月</b></font>
						</td>
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #f5fafe">

									<td align="center" width="10%">
										序号
									</td>
									<td align="center" width="10%">
										商铺编号
									</td>
									<td align="center" width="10%">
										商户名
									</td>
									<td align="center" width="10%">
										商户真实姓名
									</td>
									
									<td align="center" width="10%">
										销售金额
									</td>
									
								</tr>
									
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="18%">
												
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												
											</td>
											
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
											
										</tr>
									
							</table>
						</td>
					</tr>
					<tr align="center">
						<td colspan="7">
							第1/n页 
							
								<a href="#">首页</a>|
								<a href="#">上一页</a>|
							
							
								<a href="#">下一页</a>|
								<a href="#">尾页</a>|
							
						</td>
					</tr>
				</TBODY>
			</table>
		</form>
	</body>
</HTML>

