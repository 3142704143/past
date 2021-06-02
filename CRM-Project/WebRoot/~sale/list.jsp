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
	<script type="text/javascript">
			$(function(){
				$("#form2 table tr td").addClass("list_data_text");
			});
		   	function delet(usrId,creatId,chcId){
		   		if(usrId!=creatId){
		   			alert("您不是该机会的创建人！无法删除");
		   			return;
		   		}
		   		if(confirm("确认删除吗？")){
		   			$.post("sc!delete",{"sc.chcId":chcId},function(data){
		   				location.reload();
		   			});
		   		}
		   	}
	</script>
</head>
<body>

<div class="page_title">销售机会管理</div>
	<div class="button_bar">
		<button class="common_button" onclick="help('欢迎使用客户关系管理系统');">帮助</button>  
		<button class="common_button" type="button" onclick="to('sc!queryOne?b=1');">新建</button>
		<button class="common_button" onclick="document.getElementById('form1').submit();">查询</button>
	</div>
<form action="${pageContext.request.contextPath}/sc!scList" method="post" id="form1">
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
<form action="right!rightList" method="post" id="form2">	
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户名称</th>
		<th>概要</th>
		<th>联系人</th>
		<th>联系人电话</th>
		<th>创建时间</th>
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
			<td >
				<img onclick="to('sc!queryOne?sc.chcId=${s.chcId}&a=1');" title="指派" src="${pageContext.request.contextPath}/images/bt_linkman.gif" class="op_button" />
				<img onclick="to('sc!queryOne?sc.chcId=${s.chcId}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
				<img onclick="delet(${loginUser.usrId},${s.chcCreateId},${chcId});" title="删除" src="${pageContext.request.contextPath}/images/bt_del.gif" class="op_button" />
			</td>
		</tr>
	</s:iterator>
	<tr>
		<th colspan="7" class="pager">
			<div class="pager">
				<s:if test="#request.scSum!=0">
					共${scSum} 条记录 
					每页<input id="count" size="2" value="${count}" name="count">条
					第${cpage} 页/共 ${scCount} 页
					<s:if test="#request.cpage==1 and #request.scCount>1">
						<a href="sc!scList?cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="sc!scList?cpage=${scCount}&count=${count}">最后一页</a>
					</s:if>
					<s:elseif test="#request.scCount>#request.cpage and #request.cpage!=1">
						<a href="sc!scList?cpage=1&count=${count}">第一页</a>
						<a href="sc!scList?cpage=${cpage-1}&count=${count}">上一页</a>
						<a href="sc!scList?cpage=${cpage+1}&count=${count}">下一页</a>
						<a href="sc!scList?cpage=${scCount}&count=${count}">最后一页</a>
					</s:elseif>
					<s:elseif test="#request.scCount==#request.cpage and #request.cpage!=1">
						<a href="sc!scList?cpage=1&count=${count}">第一页</a>
						<a href="sc!scList?cpage=${cpage-1}&count=${count}">上一页</a>
					</s:elseif>
					转到
					<input id="cpage" size="2" name="cpage" value="${cpage}" >页
					<button type="button" onclick="subGo(${allSum},'sc!scList')">GO</button>
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
