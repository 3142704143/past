<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<SCRIPT type="text/javascript">
		$(function(){
				$("#form2 table tr td").addClass("list_data_text");
		});
</SCRIPT>
</head>
<body>

<div class="page_title">客户服务管理 &gt; 服务档案</div>
<div class="button_bar">
	<button class="common_button" onclick="help('已经全部显示了，没有帮助');">帮助</button>
	<button class="common_button" onclick="back();">返回</button> 
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${cs.svrId}</td>
		<th>服务类型</th>
		<td>${cs.svrType}</td>
	</tr>
	<tr>
		<th>概要</th>
		<td colspan="3">${cs.svrTitle}</td>
	</tr>	
	<tr>
		<th>客户</th>
		<td>${cs.svrCustName}</td>
		<th>状态</th>
		<td>已归档</td>
	</tr>	
	<tr>
		<th>服务请求</th>
		<td colspan="3">${cs.svrRequest}<br>
　</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${cs.svrCreateBy}</td>
		<th>创建时间</th>
		<td>${cs.svrCreateDate}</td>
	</tr>
	</table>
<br />
<table class="query_form_table" id="table3">
	<tr>
		<th>分配给</th>
		<td>${cs.svrDueTo}</td>
		<th>分配时间</th>
		<td>${cs.svrDueDate}</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table1">
	<tr>
		<th>服务处理</th>
		<td colspan="3">${cs.svrDeal}</td>
	</tr>
	<tr>
		<th>处理人</th>
		<td>${cs.svrDealBy}</td>
		<th>处理时间</th>
		<td>${cs.svrDealDate}</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table2">
	<tr>
		<th>处理结果</th>
		<td>${cs.svrResult}</td>
		<th>满意度</th>
		<td>
			<c:forEach begin="1" end="${cs.svrSatisfy}">
				<img src="${pageContext.request.contextPath}/images/star.jpg" class="star_pic" />
			</c:forEach>
		</td>
	</tr>
</table>
</body>
</html>
