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
function dlt(lkmId){
	if(confirm("确认删除?")){
		$.post("cust!toLinkmanDelete",{"ck.lkmId":lkmId},function(data){
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

<div class="page_title">客户信息管理 > 客户信息 > 联系人 </div>
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>
	<button type="button" class="common_button" onclick="to('${pageContext.request.contextPath}/~cust/cust/linkman_add.jsp?custNo=${c.custNo}');">新建</button>  
	<button type="button" class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td>${c.custNo}
		<input type="hidden" value="${c.custNo}" name="ct.custNo"/>
		</td>
		<th>客户名称</th>
		<td>${c.custName}</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>姓名</th>
		<th>性别</th>
		<th>职位</th>
		<th>办公电话</th>
		<th>手机</th>
		<th>备注</th>
		<th>操作</th>
	</tr>
	<s:if test="#request.c.cstlinkmans!=null">
		<s:iterator value="#request.c.cstlinkmans" var="lm">
			<tr>
				<td class="list_data_text">${lm.lkmName}</td>
				<td class="list_data_text">${lm.lkmSex}</td>
				<td class="list_data_text">${lm.lkmPostion}</td>
				<td class="list_data_text">${lm.lkmTel}</td>
				<td class="list_data_text">${lm.lkmMobile}</td>
				<td class="list_data_text">${lm.lkmMemo}</td>
				<td class="list_data_op">
					<img onclick="to('cust!toLinkmanEdit?ck.lkmId=${lm.lkmId}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
					<img onclick="dlt(${lm.lkmId});" title="删除" src="${pageContext.request.contextPath}/images/bt_del.gif" class="op_button" />
				</td>
			</tr>
	</s:iterator>
	</s:if>
	</table>
</body>
</html>