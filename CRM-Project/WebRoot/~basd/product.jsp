<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
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
<div class="page_title">产品查询</div>
<div class="button_bar">
	<input class="common_button" onclick="help('欢迎使用客户关系管理系统');" type="button" value="帮助">
	<input class="common_button" type="button" onclick="document.getElementById('proForm1').submit();" value="查询"/>
</div>
<form action="pro!proList" method="post" id="proForm1">
<table class="query_form_table">
	<tr>
		<th>名称</th>
		<td>
			<input name="pd.prodName"/>
			<input type="hidden" name="cpage" value="${cpage}">
		   	<input type="hidden" name="count" value="${count}">
		</td>
		<th>型号</th>
		<td><input name="pd.prodType"/></td>
		<th>批次</th>
		<td><input name="pd.prodBatch"/></td>
	</tr>
</table>
</form>
<br />
<form action="pro!proList" method="post" id="form2">	
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>名称</th>
		<th>型号</th>
		<th>等级/批次</th>
		<th>单位</th>
		<th>单价（元）</th>
		<th>备注</th>
	</tr>
	<c:forEach items="${list}"var="p">
	<tr>
		<td>${p.prodId}</td>
		<td>${p.prodName}</td>
		<td>${p.prodType}</td>
		<td>${p.prodBatch}</td>
		<td>${p.prodUnit}</td>
		<td>${p.prodPrice}</td>
		<td>${p.prodMemo}</td>		
	</tr>
	</c:forEach>
	<tr>
		<th colspan="100" class="pager">
			<div class="pager">
				<s:if test="#request.proSum!=0">
						共${proSum} 条记录 
						每页<input id="count" size="2" value="${count}" name="count">条
						第${cpage} 页/共 ${proCount} 页
						<s:if test="#request.cpage==1 and #request.proCount>1">
							<a href="pro!proList?cpage=${cpage+1}&count=${count}">下一页</a>
							<a href="pro!proList?cpage=${proCount}&count=${count}">最后一页</a>
						</s:if>
						<s:elseif test="#request.proCount>#request.cpage and #request.cpage!=1">
							<a href="pro!proList?cpage=1&count=${count}">第一页</a>
							<a href="pro!proList?cpage=${cpage-1}&count=${count}">上一页</a>
							<a href="pro!proList?cpage=${cpage+1}&count=${count}">下一页</a>
							<a href="pro!proList?cpage=${proCount}&count=${count}">最后一页</a>
						</s:elseif>
						<s:elseif test="#request.proCount==#request.cpage and #request.cpage!=1">
							<a href="pro!proList?cpage=1&count=${count}">第一页</a>
							<a href="pro!proList?cpage=${cpage-1}&count=${count}">上一页</a>
						</s:elseif>
						转到
						<input id="cpage" size="2" name="cpage" value="${cpage}" >页
						<button type="button" onclick="subGo(${allSum},'pro!proList')">GO</button>
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