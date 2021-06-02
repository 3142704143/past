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
    <div class="page_title">权限管理 > 角色管理 > 角色管理 > 查看角色</div>
    	<div class="button_bar">
	   		<button class="common_button" onclick="help('查询没有帮助？？？');">帮助</button>
	   		<button class="common_button" onclick="back();">返回</button>
	   	</div>
	   	<table class="query_form_table">
	   		<tr>
	   			<th>编号</th>
	   			<td>${role.roleId}</td>
	   			<th>角色名</th>
	   			<td>${role.roleName}</td>
	   		</tr>
	   		<tr>
	   			<th>角色描述</th>
	   			<td>${role.roleDesc}</td>
	   			<th>状态</th>
	   			<td>
	   				<s:if test="#request.role.roleFlag==1">正常</s:if>
	   				<s:else>禁用</s:else>
	   			</td>
	   		</tr>
	   	</table>
  </body>
</html>

