<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
<SCRIPT type="text/javascript">
	$(function(){
		$("table input[type='text']").prop("readonly",true);
		
		$("#bc").click(function(){
			if($("#due").val()==""){
				alert("带有红色*号的资料不能为空！");
				return;
			}
			$.post("sc!updateDue",$("#Form1").serialize(),function(data){
   				if(data=="No"){
   					alert("指派失败");
   				}else{
   					alert("指派成功");
   					to('sc!scList');
   				}
   			});
		});
	});
</SCRIPT>
</head>
<body>

<div class="page_title">销售机会管理&nbsp; &gt; 指派销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('指派我不会，你去百度吧！');">帮助</button>
 	<button class="common_button"  onclick="back();">返回</button>
	<button class="common_button" type="button" id="bc">保存</button>
</div>

<form action="sc!updateDue" method="post" id="Form1">
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${sc.chcId}</td>
		<th>机会来源</th>
		<td>${sc.chcSource}</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${sc.chcCustName}</td>
		<th>成功机率（%）</th>
		<td>${sc.chcRate}</td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3">${sc.chcTitle}</td>
	</tr>
	<tr>
		<th>联系人</th>
		<td>${sc.chcLinkman}</td>
		<th>联系人电话</th>
		<td>${sc.chcTel}</td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3">${sc.chcDesc}</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${sc.chcCreateBy}
			<s:hidden name="sc.chcId"></s:hidden>
		</td>
		<th>创建时间</th>
		<td>${sc.chcCreateDate}</td>
	</tr>
</table>
<br />
<table disabled class="query_form_table" id="table1">
	<tr>
		<th>指派给</th>
		<td>
			<select id="due" name="sc.chcDueId">
				<option value="">请选择...</option>
				<s:iterator value="#request.khjl" var="u">
					<option value="${u.usrId}">${u.usrName}</option>
				</s:iterator>
			</select><span class="red_star">*</span>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table>
</form>
</body>
</html>
