<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
				$("#sub").click(function(){
					if($("#userName").val()==""){
						alert("用户名不能为空！");
						return;
					}else if($("#userPwd").val()==""){
						alert("密码不能为空！");
						return;
					}else{
						$.post("${pageContext.request.contextPath}/user!add",$("#form").serialize(),function(data){
			   				if(data=="Yes"){
			   					alert("该用户名已存在！");
			   				}else if(data=="addNo"){
			   					alert("添加失败！");
			   				}else{//添加成功
			   					to('${pageContext.request.contextPath}/user!userList');
			   				}
			   			});
					}
				});
			})
		</script>
	</head>
  <body>
   	<div class="page_title">权限管理 > 用户管理 > 添加系统用户</div>
	   	<div class="button_bar">
	   		<button class="common_button" type="button" onclick="help('添加用户都不会，你傻吗？');">帮助</button>
	   		<button class="common_button" type="button" onclick="back();">返回</button>
			<input class="common_button" id="sub"  value="保存" type="button"  />
	   	</div>
   	<form id="form" action="${pageContext.request.contextPath}/user!add" method="post">
	   	<table class="query_form_table">
	   		<tr>
	   			<th>用户名</th>
	   			<td>
	   				<input id="userName" name="user.usrName" size="20"  >
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>密码</th>
	   			<td>
	   				<input id="userPwd" name="user.usrPassword" size="20" >
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>状态</th>
	   			<td>正常<input type="hidden" value="1" name="user.usrFlag"/></td>
	   		</tr>
	   		<tr>
	   			<th>角色</th>
	   			<td>未指派</td>
	   		</tr>
	   		<tr>
	   		</tr>
	   	</table>
   	</form>
  </body>
</html>
