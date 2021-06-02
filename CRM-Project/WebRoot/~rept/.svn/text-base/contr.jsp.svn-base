<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form action="ord!queryAll" method="post">
<div class="page_title">客户贡献分析</div>
<div class="button_bar">
	<input class="common_button" type="button" value="帮助" onclick="help('欢迎使用客户关系管理系统');">
	<input class="common_button" type="submit" value="查询">
	</div>
<table class="query_form_table">
	<tr>
		<th>客户名称</th>
		<td><input name="names"/></td>
		<th>年份</th>
		<td>
			<select name="dates" style="width:70px">
				<option value="">全部</option>
				<c:forEach var="d" begin="2000" end="2030" > 
					<option value="${d}"  ${dates==d? "selected":""} >${d}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	</table>
<br />
</form>
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户名称</th>
		<th>订单金额（元）</th>
	</tr>
	<c:forEach items="${list}" var="o" varStatus="r">
		<tr>
			<td class="list_data_text">${r.index+1}</td>
			<td class="list_data_text">${o[0]}</td>
			<td class="list_data_text">${o[1]}</td>
		</tr>
	</c:forEach>
	
</table>
</body>
</html>
