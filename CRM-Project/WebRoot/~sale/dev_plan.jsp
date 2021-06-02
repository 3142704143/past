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
</head>
<body>

<div class="page_title">客户开发计划 &gt; 制定计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('我也不会制定');">帮助</button>
	<button class="common_button" onclick="to('sc!querySal?sc.chcId=${s.chcId}&a=1');">执行计划</button>
	<button class="common_button" onclick="back();">返回</button>
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
		<th width="150px">日期</th>
		<th height="31">计划项</th>
	</tr>
	<s:if test="#request.s.salplans!=null">
		<s:iterator value="#request.s.salplans" var="ss">
			<tr>
				<td class="list_data_text" height="24">${ss.plaDate}</td>
				<td class="list_data_ltext" height="24"><input id="${ss.plaId}" size="50" value="${ss.plaTodo}" />
				<button class="common_button" onclick="update(${ss.plaId})">保存</button>
				<button class="common_button" onclick="delet(${ss.plaId})">删除</button>
			</td>
		</tr>
	</s:iterator>
	</s:if>
	</table>
<div class="button_bar">
	<button class="common_button" onclick="sub(${s.chcId});">保存</button>
</div>
<form action="" method="post" id="addForm">
<table class="query_form_table" id="table2">
	<tr>
		<th>日期</th>
		<td><input id="t1" name="sp.plaDate" readonly="readonly"/><span class="red_star">*</span></td>
		<th>计划项</th>
		<td>
			<input size="50" name="sp.plaTodo" id="plaTodo"/><span class="red_star">*</span>
			<input type="hidden"  name="chcId" value="${s.chcId}"/>
		</td>
	</tr>
</table>
</form>
</body>
<SCRIPT type="text/javascript">
	setCurTime("t1");
	function sub(chcId){
		if($("#plaTodo").val()==""){
			alert("请输入计划项在保存");
			return;
		}
		$.post("sp!add",$("#addForm").serialize(),function(data){
			if(data=="No"){
				alert("保存失败！");
			}else{
				alert("保存成功！");
				location.reload();
			}
  		});
	};
	
	function update(plaId){
		if($("#"+plaId).val()==""){
			alert("请输入计划项在保存");
			return;
		}
		$.post("sp!update",{"sp.plaId":plaId,"sp.plaTodo":$("#"+plaId).val()},function(data){
			if(data=="No"){
				alert("保存失败！");
			}else{
				alert("保存成功！");
				location.reload();
			}
  		});
	}
	
	function delet(plaId){
		if(confirm("确认删除吗？")){
			$.post("sp!delete",{"sp.plaId":plaId},function(data){
				if(data=="No"){
					alert("删除失败！");
				}else{
					alert("删除成功！");
					location.reload();
				}
  		});
		}
	}
</SCRIPT>
</html>
