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

<div class="page_title">客户服务管理 &gt; 服务处理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('服务处理你不行就算了！');">帮助</button>
	<button class="common_button" onclick="back();">返回</button> 
	<button class="common_button" onclick="document.getElementById('form1').submit();">保存</button>  
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
		<td>已分配</td>
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
<form action="cs!updateDeal" method="post" id="form1">
<table class="query_form_table" id="table1">
	<tr>
		<th>服务处理</th>
		<td colspan="3"><textarea name="cs.svrDeal" rows="6" cols="50" ></textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>处理人</th>
		<td>
			<input name="cs.svrDealBy" value="${loginUser.usrName}" readonly size="20" /><span class="red_star">*</span>
			<input type="hidden" value="${loginUser.usrId}" name="cs.svrDealId"/>
			<input type="hidden" value="${cs.svrId}" name="cs.svrId"/>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table>
</form>
</body>
</html>
