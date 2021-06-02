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

<div class="page_title">客户信息管理 > 客户信息 > 联系人 > 新建联系人</div>
<form action="${pageContext.request.contextPath}/cust!linkmanAdd" method="post">
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>
	<button type="button" class="common_button" onclick="back();">返回</button>
	<button type="submit" class="common_button" >保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>姓名</th>
		<td><input  name="ck.lkmName" required/><span class="red_star">*</span></td>
		<th>性别</th>
		<td>
			<input type="radio" name="ck.lkmSex" value="男" checked="checked"/>男
			<input type="radio" name="ck.lkmSex" value="女" />女
			<input type="hidden" name="ct.custNo" value="${param.custNo}"/>
		</td>
	</tr>
	<tr>
		<th>职位</th>
		<td><input  name="ck.lkmPostion" required/><span class="red_star">*</span></td>
		<th>办公电话</th>
		<td><input  name="ck.lkmTel" required/><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>手机</th>
		<td><input name="ck.lkmMobile" size="20" /></td>
		<th>备注</th>
		<td><input name="ck.lkmMemo" size="20" /></td>
	</tr>
</table>
</form>
</body>
</html>