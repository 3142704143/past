<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/script/common.js"></script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 用户管理 > 系统角色管理 > 添加角色
		</div>
		<form action="${pageContext.request.contextPath}/role!add" method="post">
			<div class="button_bar">
		   		<button class="common_button" type="button" onclick="help('添加角色都不会，你真下饭');">帮助</button>
		   		<button class="common_button" type="button" onclick="back();">返回</button>
				<input class="common_button"  value="保存" type="submit" >
		   	</div>
			<table class="query_form_table">
				<tr>
					<th>角色名</th>
					<td>
						<input name="role.roleName" required/>
					</td>
				</tr>
				<tr>
					<th>角色描述</th>
					<td>
						<input name="role.roleDesc"/>
					</td>
				</tr>
				<tr>
					<th>状态</th>
					<td>正常<input type="hidden" value="1" name="role.roleFlag"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>

