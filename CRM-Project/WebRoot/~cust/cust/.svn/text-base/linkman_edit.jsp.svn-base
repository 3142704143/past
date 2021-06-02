<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.js"></script>
</head>
<body>

<div class="page_title">客户信息管理 > 客户信息 > 联系人 > 编辑联系人</div>
<form action="${pageContext.request.contextPath}/cust!linkmanEdit" method="post">
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>
	<button type="button" class="common_button" onclick="back();">返回</button>
	<button type="submit" class="common_button" >保存</button>  
</div>
<table class="query_form_table" id="table1">
	<tr>
		<th>姓名</th>
		<td><input readonly name="ck.lkmName" value="${linkman.lkmName}" size="20" /><span class="red_star">*</span></td>
		<th>性别</th>
		<td>
			<input type="radio" name="ck.lkmSex" value="男" <c:if test="${linkman.lkmSex eq '男'}">checked="checked"</c:if> />男
			<input type="radio" name="ck.lkmSex" value="女" <c:if test="${linkman.lkmSex eq '女'}">checked="checked"</c:if> />女
			<input type="hidden" name="ck.lkmId" value="${linkman.lkmId}"/>
			<input type="hidden" name="ck.cstcustomer.custNo" value="${linkman.cstcustomer.custNo}"/>
			<input type="hidden" name="ck.lkmCustName" value="${linkman.lkmCustName}"/>
		</td>
	</tr>
	<tr>
		<th>职位</th>
		<td><input id="postion" name="ck.lkmPostion" value="${linkman.lkmPostion}" size="20"  required/><span class="red_star">*</span></td>
		<th>办公电话</th>
		<td><input id="tel" name="ck.lkmTel" value="${linkman.lkmTel}" size="20"  required/><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>手机</th>
		<td><input id="mobile" name="ck.lkmMobile" value="${linkman.lkmMobile}" size="20" /></td>
		<th>备注</th>
		<td><input id="memo" name="ck.lkmMemo" size="20" value="${linkman.lkmMemo}"/></td>
	</tr>
</table>
</form>
</body>
</html>