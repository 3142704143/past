<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/script/common.js"></script>
		<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
		<SCRIPT type="text/javascript">
			$(function(){
				$("table tr td").addClass("list_data_text");
			})
		</SCRIPT>
	</head>
  <body>
    <div class="page_title">权限管理 > 用户管理 > 查看用户</div>
    	<div class="button_bar">
	   		<button class="common_button"  onclick="help('这个就查看资料的，你还要帮助？');">帮助</button>
	   		<button class="common_button" onclick="back();">返回</button>
	   	</div>
	   	<table class="query_form_table">
	   		<tr>
	   			<th>编号</th>
	   			<td>${u.usrId}</td>
	   			<th>用户名</th>
	   			<td>${u.usrName}</td>
	   		</tr>
	   		<tr>
	   			<th>角色</th>
   				<s:if test="#request.u.role==null">
	   				<td>未指派</td>
	   			</s:if>
	   			<s:else>
		   			<td>${u.role.roleName}</td>
	   			</s:else>
	   			<th>状态</th>
	   			<td>
	   				<s:if test="#request.u.usrFlag==1">正常</s:if>
	   				<s:else>禁用</s:else>
	   			</td>
	   		</tr>
	   	</table>
  </body>
</html>

