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
		<script>
			$(function(){
				$("table tr td input").prop("readonly",true);
			});
			function toupdate(){
	   			$.post("role!toUpdateUser",$("#roleForm").serialize(),function(data){
	   				if(data=="No"){
	   					alert("编辑失败");
	   				}else{
	   					alert("编辑成功");
	   					to('role!roleList');
	   				}
	   			});
	   		}
		</script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 用户管理 > 系统角色管理 > 编辑角色
		</div>
			<div class="button_bar">
				<button class="common_button" onclick="help('编辑都不会，你明天不用来了');">帮助</button>
		   		<button class="common_button" onclick="back();">返回</button>
				<input class="common_button"  value="保存" type="button"  onclick="toupdate()">
			</div>
		<form action="role!toUpdateRole" method="post" id="roleForm">
			<table class="query_form_table">
				<tr>
					<th>编号</th>
					<td>
						<s:textfield name="role.roleId"></s:textfield>
					</td>
					<th>角色名</th>
					<td>
						<s:textfield name="role.roleName"></s:textfield>
					</td>
				</tr>
				<tr>
					<th>
						角色描述
					</th>
					<td>
						<s:textarea cols="20" rows="3" name="role.roleDesc"></s:textarea>
					</td>
					<th>
						状态
					</th>
					<td>
						<select name="role.roleFlag">
	   						<option value="1" ${role.roleFlag==1? "selected" : ""}>正常</option>
	   						<option value="0" ${role.roleFlag==0? "selected" : ""}>禁用</option>
	   				</select>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>

