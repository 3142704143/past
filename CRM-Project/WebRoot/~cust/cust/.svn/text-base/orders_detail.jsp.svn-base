<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div class="page_title">客户信息管理 &gt; 客户信息 &gt; 历史订单 &gt; 订单明细 </div>
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>
	<button type="button" class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table" height="59">
	<tr>
		<th>客户编号</th>
		<td>${o.customer.custNo}
		<input type="hidden" value="${o.customer.custNo}" name="ct.custNo"/>
		</td>
		<th>客户名称</th>
		<td>${o.customer.custName}</td>
	</tr>
	<tr>
		<th height="28">送货地址</th>
		<td>${o.odrAddr}</td>
		<th height="28">总金额（元）</th>
		<td>${money}</td>
	</tr>
	<tr>
		<th height="28">状态</th>
		<td>${o.odrStatus == 1 ? "未回款" : "已回款"}</td>
		<th height="28">&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>商品</th>
		<th>数量</th>
		<th>单位</th>
		<th>单价（元）</th>
		<th>金额（元）</th>
	</tr>
	<c:forEach items="${o.ol}" var="oo">
		<tr>
			<td class="list_data_text">${oo.product.prodName}</td>
			<td class="list_data_ltext">${oo.oddCount}</td>
			<td class="list_data_text">${oo.oddUnit}</td>
			<td class="list_data_text">${oo.oddPrice}</td>
			<td class="list_data_text">${oo.oddCount*oo.oddPrice}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>