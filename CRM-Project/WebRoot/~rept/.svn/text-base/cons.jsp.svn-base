<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
<form action="cust!queryAll" method="post">
<div class="page_title">客户构成分析</div>
<div class="button_bar">

	<input class="common_button" type="button" onclick="help('欢迎使用客户关系管理系统');" value="帮助">
	<input class="common_button" type="submit" value="查询"/>
	</div>
<table class="query_form_table">
	<tr>
		<th>报表方式</th>
		<td>
			<select name="tj">
				<option>等级</option>
				<option>信用度</option>
				<option>满意度</option>
			</select>
		</td>

	<th>&nbsp;</th>
		<td>
			&nbsp;
		</td>
			</tr>
	</table>
</form>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>${tj1}</th>
		<th>客户数量</th>
	</tr>
	<c:forEach items="${list}" var="c" varStatus="r">
	<tr>
		<td class="list_data_number">${r.index+1}</td>
		<s:if test="#request.tj1.equals('等级')">
			<td class="list_data_text">${c[1]}</td>
		</s:if>
		<s:else>
			<td class="list_data_text">${c[1]}星</td>
		</s:else>
		<td class="list_data_number">${c[0]}</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>
