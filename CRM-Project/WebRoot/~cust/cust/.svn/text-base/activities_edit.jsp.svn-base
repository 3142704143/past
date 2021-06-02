<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
</head>
<body>

<div class="page_title">客户信息管理 &gt; 客户信息 &gt; 交往记录 &gt; 编辑交往记录</div>
<form action="${pageContext.request.contextPath}/cust!activitiesEdit" method="post" >
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>
	<button type="button" class="common_button" onclick="back();">返回</button>
	<button type="submit" class="common_button" >保存</button>  
</div>
<table class="query_form_table" id="table1">
	<tr>
		<th>时间</th>
		<td><input id="date" readonly="readonly" name="ca.atvDate" value="${activity.atvDate}" size="20" required/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地点</th>
		<td>
			<input name="ca.atvPlace" value="${activity.atvPlace}" size="20" required/>
			<input type="hidden" name="ca.atvId" value="${activity.atvId}"/>
			<input type="hidden" name="ca.customer.custNo" value="${activity.customer.custNo}"/>
			<input type="hidden" name="ca.atvCustName" value="${activity.atvCustName}"/>
			<span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>概要</th>
		<td><input name="ca.atvTitle" value="${activity.atvTitle}" size="20"  required/><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>详细信息</th>
		<td colspan="3">
			<textarea cols="50" rows="6" name="ca.atvDesc">${activity.atvDesc}</textarea>
		</td>
	</tr>
</table>
</form>
</body>
</html>