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
		<form id="Form1" >
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="lightgoldenrodyellow">
							<strong>商户列表</strong>
						</TD>
					</tr>
					<tr>
						<td align="center" class="ta_01">
							<input type="text"  placeholder="请输入要查询的内容" style="width: 40%;"/>
							<button type="button"  value="search"  >
							<font color="black"><b>搜索</b></font>
						
						
					</td>
						
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #f5fafe">

									<td align="center" width="18%">
										序号
									</td>
									<td align="center" width="17%">
										商户名称
									</td>
									<td align="center" width="17%">
										商户编号
									</td>
									<td width="7%" align="center">
										封禁
									</td>
									<td width="7%" align="center">
										解封
									</td>
								</tr>
									<s:iterator var="u" value="pageBean.list" status="status">
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="18%">
												<s:property value="#status.count"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:property value="#u.username"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:property value="#u.name"/>
											</td>
											<td align="center" style="HEIGHT: 22px">
												<a href="#">
													<font>封禁</font>
												</a>
											</td>
									
											<td align="center" style="HEIGHT: 22px">
												<a href="#">
													<font>解封</font>
												</a>
											</td>
										</tr>
									</s:iterator>	
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
