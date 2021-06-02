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
	<script>
			$(function(){
				$("table tr td input[name='sc.chcId'],[name='sc.chcCreateBy'],[name='sc.chcCreateDate']").prop("readonly",true);
			});
			function toupdate(){
				if($("#sc_chcCustName").val()=="" || $("#sc_chcRate").val()=="" || $("#sc_chcTitle").val()==""){
					alert("带有红色*号的资料不能为空！");
					return;
				}
	   			$.post("${pageContext.request.contextPath}/sc!update",$("#form").serialize(),function(data){
	   				if(data=="No"){
	   					alert("编辑失败");
	   				}else{
	   					alert("编辑成功");
	   					to('sc!scList');
	   				}
	   			});
	   		}
		</script>
	</head>
<body>

<div class="page_title">销售机会管理&nbsp; &gt; 编辑销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('编辑都不会，你明天不用来了');">帮助</button>
  	<button class="common_button" onclick="back();">返回</button>
	<input class="common_button"  value="保存" type="button"  onclick="toupdate()">
</div>
<form action="" method="post" id="form">
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>
			<s:textfield name="sc.chcId"></s:textfield>
		</td>
		<th>机会来源</th>
		<td>
			<s:textfield name="sc.chcSource" ></s:textfield>
		</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td><s:textfield name="sc.chcCustName"></s:textfield><span class="red_star">*</span></td>
		<th>成功机率（%）</th>
		<td><s:textfield name="sc.chcRate" ></s:textfield><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3"><s:textfield name="sc.chcTitle" ></s:textfield><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>联系人</th>
		<td><s:textfield name="sc.chcLinkman"></s:textfield></td>
		<th>联系人电话</th>
		<td><s:textfield name="sc.chcTel"></s:textfield></td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3"><s:textarea cols="50" rows="6" name="sc.chcDesc"></s:textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>
			<s:textfield name="sc.chcCreateBy"></s:textfield><span class="red_star">*</span>
			<s:hidden name="sc.chcCreateId"></s:hidden>	
			<s:hidden name="sc.chcStatus"></s:hidden>	
		</td>
		<th>创建时间</th>
		<td><s:textfield name="sc.chcCreateDate"></s:textfield><span class="red_star">*</span></td>
	</tr>
</table>
	</form>
<br />

</body>
</html>
