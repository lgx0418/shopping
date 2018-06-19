<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Style1.css" />
	</HEAD>
	
	<body>
		<!--  -->
		<form id="userAction_save_do" >
			<!--<input type="hidden" name="pid" value="<s:property value="model.pid"/>">
			<input type="hidden" name="image" value="<s:property value="model.image"/>">
			
			&nbsp;-->
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="lightgoldenrodyellow" colSpan="4"
						height="26">
						<strong><STRONG>修改商品种类</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						序号
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name=""/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						是否热门：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<select name="is_hot">
							<option value="1">是</option>
							<option value="0">否</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						一级分类种类：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<select name="category.csid">
							<s:iterator var="cs" value="csList">
								<option value=""><s:property value="#cs.csname"/></option>
							</s:iterator>
						</select>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						二级分类种类:
					</td>
					<td class="ta_01" bgColor="#ffffff" width="50%">
						<select name="categorySecond.csid">
							<s:iterator var="cs" value="csList">
								<option value=""><s:property value="#cs.csname"/></option>
							</s:iterator>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品图片：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="file" name="upload" />
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品描述：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea name="pdesc" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" value="确定" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>