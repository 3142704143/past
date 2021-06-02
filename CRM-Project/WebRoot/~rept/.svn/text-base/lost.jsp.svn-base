<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>jb-aptech毕业设计项目</title>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
	<script src="${pageContext.request.contextPath}/script/common.js"></script>
	<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
			$(function(){
				$("#form2 table tr td").addClass("list_data_text");
			});
	 </script>
</head>
<body>
<form action="cst!cstList" method="post">
<div class="page_title">客户流失分析</div>
<div class="button_bar">
	<input class="common_button" type="button" onclick="help('欢迎使用客户关系管理系统');" value="帮助">
	<input class="common_button" type="submit" value="查询"/>
	</div>
	<table class="query_form_table" border="0" cellPadding="3" cellSpacing="0">
			<tr>
					<th>客户名称</th>
					<td>
						<input type="text" name="cl.lstCustName" value="">
						<input type="hidden" name="cpage" value="${cpage}">
	   					<input type="hidden" name="count" value="${count}">
					</td>
					<th>客户经理</th>
					<td><input type="text" name="cl.lstCustManagerName" value=""></td>
			</tr>
		</table>
</form>
		<br />
	<form action="cst!cstList" method="post" id="form2">	
		<table class="data_list_table">
			<tr>
				<th height="28">编号</th>
				<th height="28">年份</th>
				<th height="28">客户</th>
				<th height="28">客户经理</th>
				<th height="28">流失原因</th>
			</tr>
			<c:forEach items="${list}" var="l">
			<tr>
				<td height="27">${l.lstId}</td>
				<td height="27">${l.lstLostDate}</td>
				<td height="27">${l.lstCustName}</td>
				<td height="27">${l.lstCustManagerName}</td>
				<td height="27">${l.lstReason}</td>
			</tr>
			</c:forEach>
			<tr>
				<th colspan="7" class="pager">
					<div class="pager">
						<s:if test="#request.cstSum!=0">
							共${cstSum} 条记录 
							每页<input id="count" size="2" value="${count}" name="count">条
							第${cpage} 页/共 ${cstCount} 页
							<s:if test="#request.cpage==1 and #request.cstCount>1">
								<a href="cst!cstList?cpage=${cpage+1}&count=${count}">下一页</a>
								<a href="cst!cstList?cpage=${cstCount}&count=${count}">最后一页</a>
							</s:if>
							<s:elseif test="#request.cstCount>#request.cpage and #request.cpage!=1">
								<a href="cst!cstList?cpage=1&count=${count}">第一页</a>
								<a href="cst!cstList?cpage=${cpage-1}&count=${count}">上一页</a>
								<a href="cst!cstList?cpage=${cpage+1}&count=${count}">下一页</a>
								<a href="cst!cstList?cpage=${cstCount}&count=${count}">最后一页</a>
							</s:elseif>
							<s:elseif test="#request.cstCount==#request.cpage and #request.cpage!=1">
								<a href="cst!cstList?cpage=1&count=${count}">第一页</a>
								<a href="cst!cstList?cpage=${cpage-1}&count=${count}">上一页</a>
							</s:elseif>
							转到
							<input id="cpage" size="2" name="cpage" value="${cpage}" >页
							<button type="button" onclick="subGo(${allSum},'cst!cstList')">GO</button>
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
