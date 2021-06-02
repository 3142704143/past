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
	function update(plaId){
		if($("#"+plaId).val()==""){
			alert("请输入执行效果再保存!");
			return;
		}
		$.post("sp!update",{"a":1,"sp.plaId":plaId,"sp.plaResult":$("#"+plaId).val()},function(data){
			if(data=="No"){
				alert("保存失败！");
			}else{
				alert("保存成功！");
  				location.reload();
			}
  		});
	}
</SCRIPT>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 执行计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('抱歉，没有帮助');">帮助</button>
	<button class="common_button" onclick="alert('开发失败，已归档。');to('sc!updateStatus?sc.chcId=${s.chcId}&sc.chcStatus=4')">终止开发</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="to('sc!querySal?sc.chcId=${s.chcId}');">制定计划</button>
	<button class="common_button" onclick="alert('用户开发成功，已添加新客户记录。');to('sc!updateStatus?sc.chcId=${s.chcId}&sc.chcStatus=3&a=1');">开发成功</button>

	</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${s.chcId}</td>
		<th>机会来源</th>
		<td>${s.chcSource}</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${s.chcCustName}</td>
		<th>成功机率（%）</th>
		<td>${s.chcRate}</td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3">${s.chcTitle}</td>
	</tr>
	<tr>
		<th>联系人</th>
		<td>${s.chcLinkman}</td>
		<th>联系人电话</th>
		<td>${s.chcTel}</td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3">${s.chcDesc}</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${s.chcCreateBy}
			<s:hidden name="s.chcId"></s:hidden>
		</td>
		<th>创建时间</th>
		<td>${s.chcCreateDate}</td>
	</tr>
	<tr>
		<th>指派给</th>
		<td>${s.chcDueTo}</td>
		<th>指派时间</th>
		<td>${s.chcDueDate}</td>
	</tr>
</table>
<br />
<table class="data_list_table" id="table1">
	<tr>
		<th>日期</th>
		<th>计划</th>
		<th>执行效果</th>
	</tr>
	<s:if test="#request.s.salplans!=null">
		<s:iterator value="#request.s.salplans" var="ss">
			<tr>
				<td class="list_data_text">${ss.plaDate}</td>
				<td class="list_data_ltext">${ss.plaTodo}</td>
				<td class="list_data_ltext">
					<input id="${ss.plaId}" value="${ss.plaResult}" />　
					<button class="common_button" onclick="update(${ss.plaId});">保存</button>
				</td>
			</tr>
	</s:iterator>
	</s:if>
	</table>
</body>
</html>
