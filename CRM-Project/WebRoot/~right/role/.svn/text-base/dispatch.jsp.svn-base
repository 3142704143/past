<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/script/common.js"></script>
		<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function allch(code){
		$("[parentId='"+code+"']").prop("checked",$("#"+code).prop("checked"));	
	}
	function selSup(code){
		var parentId = $("#"+code).attr("parentId");
		$("#"+parentId).prop("checked",$("[parentId='"+parentId+"']:checked").length>0);
	}
	$(function(){
		<s:iterator value="#request.role.rights" var="rr">
		  $("#${rr.rightCode}").prop("checked",true);
		</s:iterator>
	});
</script>
	</head>
  
  <body>
    <div class="page_title">
			权限管理 > 用户管理 > 系统角色管理 > 权限分配
	</div>
	<br />
	<button class="common_button" onclick="back();">返回</button>
	<form action="role!updateRight" method="post">
		<input type="hidden" name="role.roleId" value="${role.roleId}"/>
			<table class="query_form_table">
				<tr>
					<th>角色名</th>
					<td>${role.roleName}</td>
					<th>角色描述</th>
					<td>${role.roleDesc}</td>
					<th>状态</th>
					<td>${role.roleFlag==1 ? "正常" : "禁用" }</td>
				</tr>
				<tr>
					<th>权限</th>
					<td colspan="5" align="center">
						<input type="reset" styleClass="common_button" value="取消"></input>
						<input type="submit"  styleClass="common_button" value="保存"></input>
					</td>
				</tr>
			</table>
			<br/>
			<table class="query_form_table">
				<tr>
					<td>
						<s:iterator value="#request.list" var="r">
							<s:if test="#r.rightType=='Folder'">
								<hr>
								<div>
								  &nbsp;&nbsp;&nbsp;
							 	<input type="checkbox" name="rightCode" value="${r.rightCode}" onclick="allch('${r.rightCode}')" id="${r.rightCode}">
							 	${r.rightText}
								</div>
								<br>
								<s:iterator value="#request.list" var="rr">
									<s:if test="#r.rightCode==#rr.rightParentCode">
										  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 <input type="checkbox" name="rightCode" value="${rr.rightCode}" onclick="selSup('${rr.rightCode}')" parentId="${rr.rightParentCode}" id="${rr.rightCode}">
										 ${rr.rightText}
									</s:if>
								</s:iterator>
								<br>
							</s:if>
						</s:iterator>
					</td>	
				</tr>			
			</table>
	</form>
  </body>
</html>

