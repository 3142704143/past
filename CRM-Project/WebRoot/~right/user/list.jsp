<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<SCRIPT type="text/javascript" src="script/common.js"></SCRIPT>
		<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
	</head>
	 <body>
    <div class="page_title">权限管理 > 用户管理 > 系统用户管理</div>
   
    	<div class="button_bar">
	   		<button class="common_button" onclick="help('欢迎使用客户关系管理系统');">帮助</button>
	   		<button class="common_button" type="button" onclick="to('~right/user/add.jsp');">新建</button>
			<button class="common_button" onclick="document.getElementById('userForm1').submit();">查询</button>
	   	</div>
	   	<form action="user!userList" method="post" id="userForm1">
		   	<table class="query_form_table">
		   		<tr>
		   			<th>用户名</th>
		   			<td>
		   				<input type="text" name="user.usrName" />
		   				<input type="hidden" name="cpage" value="${cpage}">
		   				<input type="hidden" name="count" value="${count}">
		   			</td>
		   			<th>是否禁用</th>
		   			<td>
		   				<select property="sysUser.usrFlag" name="user.usrFlag" >
		   					<option value=""  ${Flag==null? "selected" : ""}>全部</option>
		   					<option value="1"  ${Flag==1? "selected" : ""}>正常</option>
		   					<option value="0"  ${Flag==0? "selected" : ""}>禁用</option>
		   				</select>
		   			</td>
		   		</tr>
		   	</table>
	   	</form>
	   	<br/>
	   <form action="user!userList" method="post">
	   	<table class="data_list_table">
	   		<tr>
	   			<th>编号</th>
	   			<th>用户名</th>
	   			<th>角色</th>
	   			<th>状态</th>
	   			<th>操作</th>
	   		</tr>
	   		<s:iterator value="#request.list" var="u">
	   			<tr>
		   			<td class="list_data_text">${u.usrId}</td>
		   			<td class="list_data_text">${u.usrName}</td>
		   			<s:if test="#u.role==null">
		   				<td class="list_data_text">未指派</td>
		   			</s:if>
		   			<s:else>
			   			<td class="list_data_text">${u.role.roleName}</td>
		   			</s:else>
		   			<td class="list_data_text">
		   				<s:if test="#u.usrFlag==1">正常</s:if>
		   				<s:if test="#u.usrFlag==0">禁止</s:if>
		   			</td>
		   			<td class="list_data_op">
		   					<img onclick="to('user!queryUser?user.usrId=${u.usrId}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
		   					<s:if test="#u.usrFlag==1">
			   					<img onclick="to('user!queryUser?user.usrId=${u.usrId}&b=1');" title="指派" src="${pageContext.request.contextPath}/images/bt_linkman.gif" class="op_button" />
		   					</s:if>
		   					<img onclick="to('user!queryUser?user.usrId=${u.usrId}&a=1');" title="查看" src="${pageContext.request.contextPath }/images/bt_deal.gif" class="op_button" />
			   				<s:if test="#u.usrFlag==1 and (#u.role==null or #u.role.roleId!=1) and #u.usrId!=#session.loginUser.usrId">
			   					<img onclick="delet(${u.usrId});" title="禁用" src="${pageContext.request.contextPath }/images/bt_del.gif" class="op_button" />
			   				</s:if>
		   			</td>
		   		</tr>
	   		</s:iterator>
	   		<tr>
				<th colspan="7" class="pager">
					<div class="pager">
							<s:if test="#request.userSum!=0">
								共${userSum} 条记录 
								每页<input id="count" size="2" value="${count}" name="count">条
								第${cpage} 页/共 ${userCount} 页
								<s:if test="#request.cpage==1 and #request.userCount>1">
									<a href="user!userList?cpage=${cpage+1}&count=${count}">下一页</a>
									<a href="user!userList?cpage=${userCount}&count=${count}">最后一页</a>
								</s:if>
								<s:elseif test="#request.userCount>#request.cpage and #request.cpage!=1">
									<a href="user!userList?cpage=1&count=${count}">第一页</a>
									<a href="user!userList?cpage=${cpage-1}&count=${count}">上一页</a>
									<a href="user!userList?cpage=${cpage+1}&count=${count}">下一页</a>
									<a href="user!userList?cpage=${userCount}&count=${count}">最后一页</a>
								</s:elseif>
								<s:elseif test="#request.userCount==#request.cpage and #request.cpage!=1">
									<a href="user!userList?cpage=1&count=${count}">第一页</a>
									<a href="user!userList?cpage=${cpage-1}&count=${count}">上一页</a>
								</s:elseif>
								转到
								<input id="cpage" size="2" name="cpage" value="${cpage}" >页
								<button type="button" onclick="subGo(${allSum},'user!userList')">GO</button>
							</s:if>
							<s:else>
								无任何记录
							</s:else>
					</div>
				</th>
			</tr>
	   	</table>
    </form>
    <script type="text/javascript">
	    	function delet(usrId){
	   			$.post("user!delete",{"user.usrId":usrId},function(data){
	   				location.reload();
	   			});
	    	}
    	</script>
  </body>
</html>
