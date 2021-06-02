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
				$("#form2 table tr td").addClass("list_data_text");
			});
	</SCRIPT>
</head>
<body>

<div class="page_title">客户开发计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('欢迎使用客户关系管理系统');">帮助</button>
	<button class="common_button" onclick="document.getElementById('form1').submit();">查询</button>
	</div>
<form action="${pageContext.request.contextPath}/sc!scList?a=1" method="post" id="form1">
	<table class="query_form_table">
		<tr>
			<th>客户名称</th>
			<td>
				<input name="sc.chcCustName"/>
				<input type="hidden" name="cpage" value="${cpage}">
  				<input type="hidden" name="count" value="${count}">
			</td>
			<th>概要</th>
			<td><input name="sc.chcTitle"/></td>
			<th>联系人</th>
			<td>
				<input name="sc.chcLinkman" size="20" />
			</td>
		</tr>
	</table>
</form>
<br />
<form action="sc!scList?a=1" method="post" id="form2">	
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户名称</th>
		<th>概要</th>
		<th>联系人</th>
		<th>联系人电话</th>
		<th>创建时间</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<s:iterator value="#request.list"  var="s">
		<tr>
			<td>${s.chcId}</td>
			<td>${s.chcCustName}</td>
			<td>${s.chcTitle}</td>
			<td>${s.chcLinkman}</td>
			<td>${s.chcTel}</td>
			<td>${s.chcCreateDate}</td>
			<td>${s.chcStatus==2?"开发中":"已归档"}</td>
			<td class="list_data_op">
				<s:if test="#s.chcStatus==2">
					<img onclick="to('sc!querySal?sc.chcId=${s.chcId}');" title="制定计划" src="${pageContext.request.contextPath}/images/bt_plan.gif" class="op_button" />
					<img onclick="to('sc!querySal?sc.chcId=${s.chcId}&a=1');" title="执行计划" src="${pageContext.request.contextPath}/images/bt_feedback.gif" class="op_button" />
					<img onclick="alert('用户开发成功，已添加新客户记录。');to('sc!updateStatus?sc.chcId=${s.chcId}&sc.chcStatus=3&a=1');" title="开发成功" src="${pageContext.request.contextPath}/images/bt_yes.gif" class="op_button" />
				</s:if>
				<s:else>
					<img onclick="to('sc!querySal?sc.chcId=${s.chcId}&b=1');" title="查看" src="${pageContext.request.contextPath}/images/bt_detail.gif" class="op_button" />
				</s:else>
			</td>
		</tr>
	</s:iterator>
	<tr>
		<th colspan="10" class="pager">
			<div class="pager">
				<s:if test="#request.scSum!=0">
					共${scSum} 条记录 
					每页<input id="count" size="2" value="${count}" name="count">条
					第${cpage} 页/共 ${scCount} 页
					<s:if test="#request.cpage==1 and #request.scCount>1">
						<a href="sc!scList?a=1&cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="sc!scList?a=1&cpage=${scCount}&count=${count}">最后一页</a>
					</s:if>
					<s:elseif test="#request.scCount>#request.cpage and #request.cpage!=1">
						<a href="sc!scList?a=1&cpage=1&count=${count}">第一页</a>
						<a href="sc!scList?a=1&cpage=${cpage-1}&count=${count}">上一页</a>
						<a href="sc!scList?a=1&cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="sc!scList?a=1&cpage=${scCount}&count=${count}">最后一页</a>
					</s:elseif>
					<s:elseif test="#request.scCount==#request.cpage and #request.cpage!=1">
						<a href="sc!scList?a=1&cpage=1&count=${count}">第一页</a>
						<a href="sc!scList?a=1&cpage=${cpage-1}&count=${count}">上一页</a>
					</s:elseif>
					转到
					<input id="cpage" size="2" name="cpage" value="${cpage}" >页
					<button type="button" onclick="subGo(${allSum},'sc!scList?a=1')">GO</button>
				</s:if>
				<s:else>
					无任何记录
				</s:else>
			</div>
		</th>
	</tr>
</table>
	</form>
</body>
</html>
