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

<div class="page_title">客户信息管理 > 客户信息 > 交往记录 > 新建交往记录</div>
<form action="${pageContext.request.contextPath}/cust!activitiesAdd" method="post" >
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>
	<button type="button" class="common_button" onclick="back();">返回</button>
	<button type="submit" class="common_button" >保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>时间</th>
		<td><input name="ca.atvDate" id="t1" readonly="readonly"  required/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地点</th>
		<td>
			<input type="hidden" name="ct.custNo" value="${param.custNo}"/>
			<input id="place" name="ca.atvPlace"   required/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>概要</th>
		<td><input id="title" name="ca.atvTitle"  required/><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>详细信息</th>
		<td colspan="3">
			<textarea cols="50" rows="6" name="ca.atvDesc"></textarea>
		</td>
	</tr>
</table>
</form>
</body>
<script>
	setCurTime('t1');
</script>
</html>