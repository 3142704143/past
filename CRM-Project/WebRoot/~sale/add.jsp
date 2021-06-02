<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>

</head>
<body>

<div class="page_title">销售机会管理&nbsp; &gt; 新建销售机会</div>
<form action="${pageContext.request.contextPath}/sc!add" method="post">
<div class="button_bar">
	<button class="common_button" type="button" onclick="help('添加都不会，吃粑粑去吧');">帮助</button>
 	<button class="common_button" type="button" onclick="back();">返回</button>
	<input class="common_button"  value="保存" type="submit" >
</div>
<table class="query_form_table">
	<tr>
		<th>机会来源</th>
		<td><input name="sc.chcSource" size="20" /></td>
		<th>客户名称</th>
		<td><input name="sc.chcCustName" required/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>成功机率</th>
		<td><input name="sc.chcRate" required type="number"/><span class="red_star">*</span></td>
		<th>概要</th>
		<td colspan="3"><input name="sc.chcTitle" size="52"  required/><span class="red_star">*</span></td>
	</tr>	
	<tr>
	</tr>
	<tr>
		<th>联系人</th>
		<td><input name="sc.chcLinkman" size="20" /></td>
		<th>联系人电话</th>
		<td><input name="sc.chcTel" size="20" /></td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3"><textarea rows="6" cols="50" name="sc.chcDesc" required></textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>
			<input name="sc.chcCreateBy" value="${loginUser.usrName}" readonly size="20" /><span class="red_star">*</span>
			<input type="hidden" value="${loginUser.usrId}" name="sc.chcCreateId"/>
		</td>
		<th>指派给</th>
		<td>
			<select name="sc.chcDueId">
				<option value="">请选择...</option>
				<s:iterator value="#request.khjl" var="u">
					<option value="${u.usrId}">${u.usrName}</option>
				</s:iterator>
			</select> <span class="red_star">非必选</span></td>
		</tr>
</table>
</form>
<br />
	
</body>
</html>
