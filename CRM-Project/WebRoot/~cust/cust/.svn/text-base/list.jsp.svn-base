<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#form2 table tr td").addClass("list_data_text");
	});
   	function delet(custNo){
   		if(confirm("确认删除该信息吗？")){
   			$.post("cust!updateStatus",{"ct.custNo":custNo},function(data){
   				if(data=="No"){
   					alert("删除失败！");
   				}else{
	   				location.reload();
   				}
   			});
   		}
   	}
</script>
</head>
<body>

<div class="page_title">客户信息管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('欢迎使用客户关系管理系统');">帮助</button>  
	<button class="common_button" onclick="document.getElementById('Form1').submit();">查询</button>
</div>
<form action="${pageContext.request.contextPath}/cust!ctList" method="post" id="Form1">
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td><input name="ct.custNo"/></td>
		<th>名称</th>
		<td><input  name="ct.custName"/></td>
		<th>地区</th>
		<td>
			<select name="ct.custRegion">
				<option value="">全部</option>
				<s:iterator value="#request.type" var="b">
					<option value="${b.dictItem}">${b.dictItem}</option>
				</s:iterator>
			</select>
		</td>
	</tr>
	<tr>
		<th>客户经理</th>
		<td><input name="ct.custManagerName" /></td>
		<th>客户等级</th>
		<td>
			<select name="ct.custLevelLabel">
				<option value="">全部</option>
				<s:iterator value="#request.type2" var="b">
					<option value="${b.dictItem}">${b.dictItem}</option>
				</s:iterator>
			</select>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
</table>
</form>
<br />
<form action="${pageContext.request.contextPath}/cust!ctList" method="post" id="form2">	
<table class="data_list_table">
	<tr>
		<th>序号</th>
		<th>客户编号</th>
		<th>名称</th>
		<th>地区</th>
		<th>客户经理</th>
		<th>客户等级</th>
		<th>操作</th>
	</tr>
	<s:iterator value="#request.list" var="c" status="i">
		<tr>
			<td>${i.count}</td>
			<td>${c.custNo}</td>
			<td>${c.custName}</td>
			<td>${c.custRegion}</td>
			<td>${c.custManagerName}</td>
			<td>${c.custLevelLabel}</td>
			<td class="list_data_op">
				<img onclick="to('cust!queryOne?ct.custNo=${c.custNo}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
				<img onclick="to('cust!queryOne?ct.custNo=${c.custNo}&a=1');" title="联系人" src="${pageContext.request.contextPath}/images/bt_linkman.gif" class="op_button" />
				<img onclick="to('cust!queryOne?ct.custNo=${c.custNo}&b=1');" title="交往记录" src="${pageContext.request.contextPath}/images/bt_acti.gif" class="op_button" />
				<img onclick="to('cust!toOrders?ct.custNo=${c.custNo}');" title="历史订单" src="${pageContext.request.contextPath}/images/bt_orders.gif" class="op_button" />
				<s:if test="#c.custStatus==1">
					<img onclick="delet('${c.custNo}');" title="删除" src="${pageContext.request.contextPath}/images/bt_del.gif" class="op_button" />
				</s:if>
			</td>
		</tr>
	</s:iterator>
	<tr>
		<th colspan="100" class="pager">
			<div class="pager">
				<s:if test="#request.ctSum!=0">
					共${ctSum} 条记录 
					每页<input id="count" size="2" value="${count}" name="count">条
					第${cpage} 页/共 ${ctCount} 页
					<s:if test="#request.cpage==1 and #request.ctCount>1">
						<a href="cust!ctList?cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="cust!ctList?cpage=${ctCount}&count=${count}">最后一页</a>
					</s:if>
					<s:elseif test="#request.ctCount>#request.cpage and #request.cpage!=1">
						<a href="cust!ctList?cpage=1&count=${count}">第一页</a>
						<a href="cust!ctList?cpage=${cpage-1}&count=${count}">上一页</a>
						<a href="cust!ctList?cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="cust!ctList?cpage=${ctCount}&count=${count}">最后一页</a>
					</s:elseif>
					<s:elseif test="#request.ctCount==#request.cpage and #request.cpage!=1">
						<a href="cust!ctList?cpage=1&count=${count}">第一页</a>
						<a href="cust!ctList?cpage=${cpage-1}&count=${count}">上一页</a>
					</s:elseif>
					转到
					<input id="cpage" size="2" name="cpage" value="${cpage}" >页
					<button type="button" onclick="subGo(${allSum},'cust!ctList')">GO</button>
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
