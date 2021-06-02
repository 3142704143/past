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
			function delet(id){
	    		if(confirm("确认删除吗？")){
	    			$.post("dict!del",{"bd.dictId":id},function(data){
		   				location.reload();
		   			});
	    		}
	    	}
</script>
</head>
<body>
<div class="page_title">数据字典管理</div>
<div class="button_bar">
	<input class="common_button" type="button" onclick="help('欢迎使用客户关系管理系统');" value="帮助"/>
	<input class="common_button" type="button" onclick="to('${pageContext.request.contextPath}/~basd/dict_add.jsp');" value="新建"/>
	<input class="common_button" type="button" onclick="document.getElementById('dictForm1').submit();" value="查询"/>
</div>
<form action="dict!dictList" method="post" id="dictForm1">
<table class="query_form_table">
	<tr>
		<th>类别</th>
		<td>
			<input name="bd.dictType" value=""/>
			<input type="hidden" name="cpage" value="${cpage}">
		   	<input type="hidden" name="count" value="${count}">
		</td>
		<th>条目</th>
		<td><input name="bd.dictItem" value=""/></td>
		<th>值</th>
		<td><input name="bd.dictValue" value=""/></td>
	</tr>
</table>
</form>
<br />
<form action="right!rightList" method="post" id="form2">	
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>类别</th>
		<th>条目</th>
		<th>值</th>
		<th>是否可编辑</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${list}" var="d">
	<tr>
		<td>${d.dictId}</td>
		<td>${d.dictType}</td>
		<td>${d.dictItem}</td>
		<td>${d.dictValue}</td>
		<td>${d.dictIsEditable}</td>
		<td class="list_data_op">
		<c:if test="${d.dictIsEditable==1}">
			<img onclick="to('dict!toUpdate?bd.dictId=${d.dictId}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
		</c:if>
		<img onclick="delet(${d.dictId});" title="删除" src="${pageContext.request.contextPath}/images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan="6" class="pager">
			<div class="pager">
					<s:if test="#request.dictSum!=0">
						共${dictSum} 条记录 
						每页<input id="count" size="2" value="${count}" name="count">条
						第${cpage} 页/共 ${dictCount} 页
						<s:if test="#request.cpage==1 and #request.dictCount>1">
							<a href="dict!dictList?cpage=${cpage+1}&count=${count}">下一页</a>
							<a href="dict!dictList?cpage=${dictCount}&count=${count}">最后一页</a>
						</s:if>
						<s:elseif test="#request.dictCount>#request.cpage and #request.cpage!=1">
							<a href="dict!dictList?cpage=1&count=${count}">第一页</a>
							<a href="dict!dictList?cpage=${cpage-1}&count=${count}">上一页</a>
							<a href="dict!dictList?cpage=${cpage+1}&count=${count}">下一页</a>
							<a href="dict!dictList?cpage=${dictCount}&count=${count}">最后一页</a>
						</s:elseif>
						<s:elseif test="#request.dictCount==#request.cpage and #request.cpage!=1">
							<a href="dict!dictList?cpage=1&count=${count}">第一页</a>
							<a href="dict!dictList?cpage=${cpage-1}&count=${count}">上一页</a>
						</s:elseif>
						转到
						<input id="cpage" size="2" name="cpage" value="${cpage}" >页
						<button type="button" onclick="subGo(${allSum},'dict!dictList')">GO</button>
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
