<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div class="page_title">客户信息管理 > 客户信息 > 历史订单 </div>
<div class="button_bar">
	<button type="button" class="common_button" onclick="alert('抱歉，你得不到任何帮助.');">帮助</button>  
	<button type="button" class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td>${c.custNo}
		<input type="hidden" value="${c.custNo}" name="ct.custNo"/>
		</td>
		<th>客户名称</th>
		<td>${c.custName}</td>
	</tr>
	</table>
<br />
<form action="${pageContext.request.contextPath}/cust!toOrders?ct.custNo=${c.custNo}" method="post" id="form2">	
<table class="data_list_table">
	<tr>
		<th>订单编号</th>
		<th>日期</th>
		<th>送货地址</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<s:iterator value="#request.list" var="order">
		<tr>
			<td class="list_data_text">${order.odrId}</td>
			<td class="list_data_text">${order.odrDate}</td>
			<td class="list_data_text">${order.odrAddr}</td>
			<td class="list_data_text">${order.odrStatus == 1 ? "未回款" : "已回款"}</td>
			<td class="list_data_op">
				<img onclick="to('cust!toOrdersDetail?od.odrId=${order.odrId}');" title="查看明细" src="${pageContext.request.contextPath}/images/bt_detail.gif" class="op_button" /></td>
		</tr>
	</s:iterator>
		<tr>
		<th colspan="100" class="pager">
			<div class="pager">
					<s:if test="#request.odSum!=0">
					共${odSum} 条记录 
					每页<input id="count" size="2" value="${count}" name="count">条
					第${cpage} 页/共 ${odCount} 页
					<s:if test="#request.cpage==1 and #request.odCount>1">
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=${odCount}&count=${count}">最后一页</a>
					</s:if>
					<s:elseif test="#request.odCount>#request.cpage and #request.cpage!=1">
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=1&count=${count}">第一页</a>
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=${cpage-1}&count=${count}">上一页</a>
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=${odCount}&count=${count}">最后一页</a>
					</s:elseif>
					<s:elseif test="#request.odCount==#request.cpage and #request.cpage!=1">
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=1&count=${count}">第一页</a>
						<a href="cust!toOrders?ct.custNo=${c.custNo}&cpage=${cpage-1}&count=${count}">上一页</a>
					</s:elseif>
					转到
					<input id="cpage" size="2" name="cpage" value="${cpage}" >页
					<button type="button" onclick="subGo2(${allSum},'cust!toOrders?ct.custNo=${c.custNo}')">GO</button>
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
<SCRIPT type="text/javascript">
	function subGo2(allSum,path){
		var count = $("#count").val();
		var cpage = $("#cpage").val();
		if(count==""||cpage==""){
			alert("每页条数和页数不能为空！");
		}else if(count<1){
			alert("每页条数不能低于0条！");
		}else if(allSum<cpage*count-count+1){
			alert("每页"+count+"条数据时，页数不存在第"+cpage+"页");
		}else{
			to(path+"&cpage="+cpage+"&count="+count);
		}
	}
</SCRIPT>
</html>