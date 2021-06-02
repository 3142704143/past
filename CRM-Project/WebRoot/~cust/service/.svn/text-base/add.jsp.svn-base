<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
<script>
	$(function(){
		$("#sub").click(function(){
			if($("#title").val()=="" || $("#custName").val()=="" || $("#req").val()==""){
				alert("带有红色*号的资料不能为空！");
			}else{
				$.post("${pageContext.request.contextPath}/cs!add",$("#addForm").serialize(),function(data){
	   				if(data=="No"){
	   					alert("创建服务失败！");
	   				}else{//创建成功
	   					alert("创建服务成功！");
	   					to('cs!queryUser');
	   				}
	   			});
			}
		});
	});
</script>
</head>
<body>

<div class="page_title">客户服务管理 > 服务创建</div>
<div class="button_bar">
	<button class="common_button" type="button" onclick="help('添加服务都不会，你傻吗？');">帮助</button>
	<input class="common_button" id="sub"  value="保存" type="button"  />
</div>
<form action="" method="post" id="addForm">
	<table class="query_form_table">
		<tr>
			<th>服务类型</th>
			<td>
				<select name="cs.svrType">
					<s:iterator value="#request.type" var="b">
						<option value="${b.dictItem}">${b.dictItem}</option>
					</s:iterator>
				</select><span class="red_star">*</span>
			</td>
		</tr>
		<tr>
			<th>概要</th>
			<td><input id="title" size="53" name="cs.svrTitle"/><span class="red_star">*</span></td>
		</tr>
		<tr>
			<th>客户</th>
			<td><input id="custName" size="20" name="cs.svrCustName"/><span class="red_star">*</span></td>
		</tr>
		<tr>
			<th>状态</th>
			<td>
				<input type="hidden"  name="cs.svrStatus" value="新创建">
				新创建
			</td>
		</tr>	
		<tr>
			<th>服务请求</th>
			<td colspan="3"><textarea  id="req" rows="6" cols="50" name="cs.svrRequest"></textarea><span class="red_star">*</span></td>
		</tr>
		<tr>
			<th>创建人</th>
			<td>
				<input  value="${loginUser.usrName}"  readonly size="20" name="cs.svrCreateBy"/><span class="red_star">*</span>
				<input type="hidden" name="cs.svrCreateId" value="${loginUser.usrId}">
			</td>
		</tr>
		</table>
	<br />
	</form>
</body>
</html>
