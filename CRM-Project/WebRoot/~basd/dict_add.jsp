<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
</head>
<body>
<div class="page_title">数据字典管理 > 新建数据字典条目</div>
<form action="${pageContext.request.contextPath}/dict!Insert" method="post" id="form" >
<div class="button_bar">
	<button class="common_button" type="button" onclick="help('添加数据都不会？你还是去搬砖吧');">帮助</button>
	<button class="common_button" type="button" onclick="back();">返回</button>
	<input  class="common_button" type="submit"  value="保存"/>  
</div>
<table class="query_form_table">
	<tr>
		<th>类别</th>
		<td><input id="type" name="bd.dictType"  required/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>条目</th>
		<td><input id="item" name="bd.dictItem"  required/><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>值</th>
		<td><input id="value" name="bd.dictValue" required/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>是否可编辑</th>
		<td>
			<input type="radio" value="1" name="bd.dictIsEditable" checked/>可编辑
			<input type="radio" value="0" name="bd.dictIsEditable" />不可编辑
		</td>
	</tr>
</table>
</form>
</body>
</html>
