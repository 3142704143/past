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
			function delet(roleId){
	   			$.post("role!delete",{"role.roleId":roleId},function(data){
	   				location.reload();
	   			});
	    	}
		</SCRIPT>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 用户管理 > 系统角色管理
		</div>
			<div class="button_bar">
				<button class="common_button" type="button" onclick="help('欢迎使用客户关系管理系统');">帮助</button>
				<button class="common_button" type="button" onclick="to('~right/role/add.jsp');">新建</button>
				<button class="common_button" onclick="document.getElementById('roleForm1').submit();">查询</button>
			</div>
		<form action="role!roleList" method="post" id="roleForm1">
			<table class="query_form_table">
				<tr>
					<th>
						角色名
					</th>
					<td>
						<input type="hidden" name="cpage" value="${cpage}">
		   				<input type="hidden" name="count" value="${count}">
						<input name="role.roleName"/>
					</td>
					<th>角色描述</th>
					<td>
						<input name="role.roleDesc"/>
					</td>
					<th>
						是否禁用
					</th>
					<td>
						<select name="role.roleFlag" >
		   					<option value=""  ${Flag==null? "selected" : ""}>全部</option>
		   					<option value="1"  ${Flag==1? "selected" : ""}>正常</option>
		   					<option value="0"  ${Flag==0? "selected" : ""}>禁用</option>
		   				</select>
					</td>
				</tr>
			</table>
		</form>
			<br />
			<table class="data_list_table">
				<tr>
					<th>编号</th>
					<th>角色名</th>
					<th>角色描述</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
				<s:iterator value="#request.list" var="r">
					<tr>
						<td class="list_data_text">${r.roleId}</td>
						<td class="list_data_text">${r.roleName}</td>
						<td class="list_data_text">${r.roleDesc}</td>
						<td class="list_data_text">
							<s:if test="#r.roleFlag==1">正常</s:if>
			   				<s:if test="#r.roleFlag==0">禁止</s:if>
						</td>
						<td class="list_data_op">
		   					<img onclick="to('role!queryRole?role.roleId=${r.roleId}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
		   					<s:if test="#r.roleFlag==1">
			   					<img onclick="to('role!queryRole?role.roleId=${r.roleId}&b=1');" title="指派" src="${pageContext.request.contextPath}/images/bt_linkman.gif" class="op_button" />
		   					</s:if>
		   					<img onclick="to('role!queryRole?role.roleId=${r.roleId}&a=1');" title="查看" src="${pageContext.request.contextPath }/images/bt_deal.gif" class="op_button" />
			   				<s:if test="#r.roleFlag==1 and #r.roleId!=1">
			   					<img onclick="delet(${r.roleId});" title="禁用" src="${pageContext.request.contextPath }/images/bt_del.gif" class="op_button" />
			   				</s:if>
		   				</td>
					</tr>
				</s:iterator>
				<tr>
					<th colspan="7" class="pager">
						<div class="pager">
							<s:if test="#request.roleSum!=0">
								共${roleSum} 条记录 
								每页<input id="count" size="2" value="${count}" name="count">条
								第${cpage} 页/共 ${roleCount} 页
								<s:if test="#request.cpage==1 and #request.roleCount>1">
									<a href="role!roleList?cpage=${cpage+1}&count=${count}">下一页</a>
									<a href="role!roleList?cpage=${roleCount}&count=${count}">最后一页</a>
								</s:if>
								<s:elseif test="#request.roleCount>#request.cpage and #request.cpage!=1">
									<a href="role!roleList?cpage=1&count=${count}">第一页</a>
									<a href="role!roleList?cpage=${cpage-1}&count=${count}">上一页</a>
									<a href="role!roleList?cpage=${cpage+1}&count=${count}">下一页</a>
									<a href="role!roleList?cpage=${roleCount}&count=${count}">最后一页</a>
								</s:elseif>
								<s:elseif test="#request.roleCount==#request.cpage and #request.cpage!=1">
									<a href="role!roleList?cpage=1&count=${count}">第一页</a>
									<a href="role!roleList?cpage=${cpage-1}&count=${count}">上一页</a>
								</s:elseif>
							转到
							<input id="cpage" size="2" name="cpage" value="${cpage}" >页
							<button type="button" onclick="subGo(${allSum},'role!roleList')">GO</button>
							</s:if>
							<s:else>
								无任何记录
							</s:else>
						</div>
					</th>
				</tr>
			</table>
	</body>
</html>

