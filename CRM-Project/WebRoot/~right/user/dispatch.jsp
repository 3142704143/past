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
				$("table input[type='text']").prop("readonly",true);
				
				$("#bc").click(function(){
					$.post("user!toUpdateUser",$("#Form1").serialize(),function(data){
		   				if(data=="No"){
		   					alert("指派失败");
		   				}else{
		   					alert("指派成功");
		   					to('user!userList');
		   				}
		   			});
				});
			});
		</SCRIPT>
	</head>
  
  <body>
    <div class="page_title">权限管理 > 用户管理 > 指派用户角色</div>
    	<div class="button_bar">
	   		<button class="common_button" onclick="help('指派我不会，你去百度吧！');">帮助</button>
	   		<button class="common_button"  onclick="back();">返回</button>
			<button class="common_button" type="button" id="bc">保存</button>
	   	</div>
	<form action="user!toUpdateUser" method="post" id="Form1">
	   	<table class="query_form_table">
	   		<tr>
	   			<th>编号</th>
	   			<td>
	   				<s:textfield name="user.usrId" ></s:textfield>
	   				<s:hidden name="user.usrFlag"></s:hidden>
	   				<s:hidden name="user.usrPassword"></s:hidden>
	   			</td>
	   			<th>用户名</th>
	   			<td>
	   				<s:textfield name="user.usrName"></s:textfield>
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>
	   				角色
	   			</th>
	   			<td>
	   				<select name="user.role.roleId">
	   					<option value="">未指派</option>
	   					<s:iterator value="#request.list" var="r">
	   						<option value="${r.roleId}" ${r.roleId==u.role.roleId?"selected":""}>${r.roleName}</option>
	   					</s:iterator>
	   				</select>
	   			</td>
	   			<th>状态</th>
	   			<td>正常</td>
	   		</tr>
	   	</table>
	</form>
  </body>
</html>
