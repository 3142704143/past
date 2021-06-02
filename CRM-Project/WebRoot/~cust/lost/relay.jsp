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

<div class="page_title">客户流失管理 &gt; 暂缓流失</div>
<form action="cst!update?a=1" method="post">
<div class="button_bar">
	<button class="common_button" type="button" onclick="help('没有帮助');">帮助</button>
	<button class="common_button" type="button" onclick="back();">返回</button>
	<button class="common_button" type="button" onclick="to('cst!queryCst?cl.lstId=${c.lstId}');">确认流失</button>
	<input class="common_button"  value="保存" type="submit" >
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${c.lstId}<input type="hidden" value="${c.lstId}" name="cl.lstId"/> </td>
		<th>客户</th>
		<td>${c.lstCustName}</td>
	</tr>
	<tr>
		<th>客户经理</th>
		<td>${c.lstCustManagerName}</td>
		<th>上次下单时间</th>
		<td>${c.lstLastOrderDate}</td>
	</tr>
	<tr>
		<th>暂缓措施</th>
		<td colspan="3">${c.lstDelay}</td>
	</tr>	
	<tr>
	<tr>
		<th>追加暂缓措施</th>
		<td colspan="3">
			<textarea name="cl.lstDelay" rows="6" cols="50" required>${c.lstDelay}</textarea><span class="red_star">*</span></td>
	</tr>
</table>
</form>
<br />
</body>
</html>
