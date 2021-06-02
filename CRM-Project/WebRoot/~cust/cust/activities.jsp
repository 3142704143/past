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
<SCRIPT type="text/javascript">
function dlt(atvId){
	if(confirm("确认删除?")){
		$.post("cust!toActivitiesDelete",{"ca.atvId":atvId},function(data){
			if(data=="No"){
				alert("删除失败！");
			}else{
				location.reload();
			}
		});
	}
}
</SCRIPT>
<body>

<div class="page_title">客户信息管理 &gt; 客户信息 &gt; 交往记录</div>
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>
	<button type="button" class="common_button" onclick="to('${pageContext.request.contextPath}/~cust/cust/activities_add.jsp?custNo=${c.custNo}');">新建</button>  
	<button type="button" class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td>${c.custNo}</td>
		<th>客户名称</th>
		<td>${c.custName}</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th width="232">时间</th>
		<th>地点</th>
		<th>概要</th>
		<th>详细信息</th>
		<th>操作</th>
	</tr>
	<s:iterator value="#request.c.activitys" var="a">
		<tr>
			<td class="list_data_text" width="230">${a.atvDate}</td>
			<td class="list_data_text">${a.atvPlace}</td>
			<td class="list_data_ltext">${a.atvTitle}</td>
			<td class="list_data_ltext">${a.atvDesc}</td>
			<td class="list_data_op">
				<img onclick="to('cust!toActivitiesEdit?ca.atvId=${a.atvId}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
				<img onclick="dlt(${a.atvId});" title="删除" src="${pageContext.request.contextPath}/images/bt_del.gif" class="op_button" />
			</td>
		</tr>
	</s:iterator>
	</table>
</body>
</html>