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

<div class="page_title">客户服务管理 &gt; 服务处理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('我不会处理，你去百度吧');">帮助</button>
	<button class="common_button" onclick="document.getElementById('form1').submit();">查询</button>  
</div>
<form action="${pageContext.request.contextPath}/cs!csList?b=1" method="post" id="form1">
<table class="query_form_table" height="53">
	<tr>
		<th height="28">客户</th>
		<td><input name="cs.svrCustName"/></td>
		<th height="28">概要</th>
		<td><input name="cs.svrTitle"/></td>
		<th height="28">服务类型</th>
		<td>
			<select name="cs.svrType">
				<option value="">--请选择--</option>
				<s:iterator value="#request.type" var="b">
					<option value="${b.dictItem}" ${fwlx==b.dictItem?"selected":""}>${b.dictItem}</option>
				</s:iterator>
			</select>
		</td>
	</tr>
	<tr>
		<th height="22">创建日期</th>
		<td colspan="3">
			<input name="time1"  type="date"/> - <input name="time2" type="date"/>
		</td>
		<th height="22">状态</th>
		<td>
			已分配
		</td>
	</tr>
</table>
</form>
<br />
<form action="" method="post" id="form2">	
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户</th>
		<th>概要</th>
		<th>服务类型</th>
		<th>创建人</th>
		<th>创建日期</th>
		<th>操作</th>
	</tr>
	<s:iterator value="#request.list" var="c">
		<tr>
			<td>${c.svrId}</td>
			<td>${c.svrCustName}</td>
			<td>${c.svrTitle}</td>
			<td>${c.svrType}</td>
			<td>${c.svrCreateBy}</td>
			<td>${c.svrCreateDate}</td>
			<td class="list_data_op">
				<img onclick="to('cs!queryCs?cs.svrId=${c.svrId}');" title="处理" src="${pageContext.request.contextPath}/images/bt_deal.gif" class="op_button" />  
			</td>
		</tr>
	</s:iterator>
	<tr>
		<th colspan="8" class="pager">
			<div class="pager">
				<s:if test="#request.csSum!=0">
					共${csSum} 条记录 
					每页<input id="count" size="2" value="${count}" name="count">条
					第${cpage} 页/共 ${csCount} 页
					<s:if test="#request.cpage==1 and #request.csCount>1">
						<a href="cs!csList?b=1&cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="cs!csList?b=1&cpage=${csCount}&count=${count}">最后一页</a>
					</s:if>
					<s:elseif test="#request.ccsount>#request.cpage and #request.cpage!=1">
						<a href="cs!csList?b=1&cpage=1&count=${count}">第一页</a>
						<a href="cs!csList?b=1&cpage=${cpage-1}&count=${count}">上一页</a>
						<a href="cs!csList?b=1&cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="cs!csList?b=1&cpage=${csCount}&count=${count}">最后一页</a>
					</s:elseif>
					<s:elseif test="#request.csCount==#request.cpage and #request.cpage!=1">
						<a href="cs!csList?b=1&cpage=1&count=${count}">第一页</a>
						<a href="cs!csList?b=1&cpage=${cpage-1}&count=${count}">上一页</a>
					</s:elseif>
					转到
					<input id="cpage" size="2" name="cpage" value="${cpage}" >页
					<button type="button" onclick="subGo(${allSum},'cs!csList?b=1')">GO</button>
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
