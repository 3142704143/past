<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 查看</div>
<div class="button_bar">
	<button class="common_button" onclick="help('已经可以查看了，没有帮助');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${s.chcId}</td>
		<th>机会来源</th>
		<td>${s.chcSource}</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${s.chcCustName}</td>
		<th>成功机率（%）</th>
		<td>${s.chcRate}</td>
	</tr>	
	<tr>
		<th>概要</th>
		<td>${s.chcTitle}</td>
		<th>状态</th>
		<td style="color:red;">${s.chcStatus==3?"开发成功":"开发失败"}</td>	
	</tr>
	<tr>
		<th>联系人</th>
		<td>${s.chcLinkman}</td>
		<th>联系人电话</th>
		<td>${s.chcTel}</td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3">${s.chcDesc}</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${s.chcCreateBy}</td>
		<th>创建时间</th>
		<td>${s.chcCreateDate}</td>
	</tr>
	<tr>
		<th>指派给</th>
		<td>${s.chcDueTo}</td>
		<th>指派时间</th>
		<td>${s.chcDueDate}</td>
	</tr>
</table>
<br />
<table class="data_list_table" id="table1">
	<tr>
		<th>日期</th>
		<th>计划</th>
		<th>执行效果</th>
	</tr>
	<s:if test="#request.s.salplans!=null">
		<s:iterator value="#request.s.salplans" var="ss">
			<tr>
				<td class="list_data_text">${ss.plaDate}</td>
				<td class="list_data_ltext">${ss.plaTodo}</td>
				<td class="list_data_ltext">${ss.plaResult}</td>
			</tr>
	</s:iterator>
	</s:if>
	</table>
</body>
</html>
