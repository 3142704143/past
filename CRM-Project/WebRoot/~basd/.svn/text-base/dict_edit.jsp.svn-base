<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
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

<div class="page_title">数据字典管理 > 编辑数据字典条目</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="document.getElementById('form').submit();">保存</button>  
</div>

<form action="dict!Update" id="form" method="post">
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${bd.dictId}
			<input type="hidden" value="${bd.dictId}" name="bd.dictId"/>
		</td>
		<th>类别</th>
		<td><input value="${bd.dictType}" name="bd.dictType"/><span class="red_star">*</span><br /></td>
	</tr>
	<tr>
		<th>条目</th>
		<td><input value="${bd.dictItem}" name="bd.dictItem"/><span class="red_star">*</span></td>
		<th>值</th>
		<td><input value="${bd.dictValue}" name="bd.dictValue"/><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>是否可编辑</th>
		<td>
			<input type="radio" value="1" name="bd.dictIsEditable" <s:if test="#request.bd.dictIsEditable==1">checked</s:if> />可编辑
			<input type="radio" value="0" name="bd.dictIsEditable" />不可编辑
		</td>
		<th>&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
</table>
</form>
</body>
</html>
