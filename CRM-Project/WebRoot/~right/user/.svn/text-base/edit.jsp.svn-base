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
		
	</head>
  
  <body>
   	<div class="page_title">权限管理 > 用户管理 > 编辑用户</div>
   		
	   	<div class="button_bar">
	   		<button class="common_button" onclick="help('想屁吃，直接想办法');">帮助</button>
	   		<button class="common_button" onclick="back();">返回</button>
			<input class="common_button"  value="保存" type="button"  onclick="toupdate()">
	   	</div>
   	<form action="user!toUpdateUser" method="post" id="editForm">
	   	<table class="query_form_table">
	   		<tr>
	   			<th>编号</th>
	   			<td>
	   				${u.usrId}
	   				<input type="hidden" name="user.usrId" size="20" value="${u.usrId}">
	   			</td>
	   			<th>用户名</th>
	   			<td>
	   				<input id="usrName" name="user.usrName" size="20" value="${u.usrName}" >
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>密码</th>
	   			<td>
	   				<input id="usrPwd" name="user.usrPassword" size="20" value="${u.usrPassword}">
	   			</td>
	   			<th>
	   				状态
	   			</th>
	   			<td>
	   				<select name="user.usrFlag">
	   						<option value="1" ${u.usrFlag==1? "selected" : ""}>正常</option>
	   						<option value="0" ${u.usrFlag==0? "selected" : ""}>禁用</option>
	   				</select>
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>角色</th>
	   			<s:if test="#request.u.role==null">
	   				<td>未指派<input type="hidden" value="${u.role}" name="user.role"/></td>
	   			</s:if>
	   			<s:else>
		   			<td>${u.role.roleName}<input type="hidden" name="user.role.roleId" size="20" value="${u.role.roleId}"></td>
	   			</s:else>
	   		</tr>
	   	</table>
	  </form>
	   	<script>
	   		function toupdate(){
	   			if($("#usrName").val()==""||$("#usrPwd").val()==""){
	   				alert("用户名和密码不能为空");
	   				return;
	   			}
	   			$.post("user!toUpdateUser",$("#editForm").serialize(),function(data){
	   				if(data=="No"){
	   					alert("编辑失败");
	   				}else{
	   					alert("编辑成功");
	   					to('user!userList');
	   				}
	   			});
	   		}
		</script>
  </body>
</html>
