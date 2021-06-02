<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="script/common.js"></script>
		<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#form2 table tr td").addClass("list_data_text");
			});
	    	function delet(rightCode){
	    		if(confirm("确认删除该权限吗？")){
	    			$.post("right!delete",{"right.rightCode":rightCode},function(data){
		   				location.reload();
		   			});
	    		}
	    	}
    	</script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 权限管理 > 权限查询
		</div>
			<div class="button_bar">
				<button class="common_button" onclick="help('欢迎使用客户关系管理系统');">帮助</button>  
				<button class="common_button" type="button" onclick="to('~right/right/add.jsp');">新建</button>
				<button class="common_button" onclick="document.getElementById('rightForm1').submit();">查询</button>
			</div>
			<form action="${pageContext.request.contextPath}/right!rightList" method="post" id="rightForm1">
				<table class="query_form_table">
					<tr>
						<th>权限文本</th>
						<td>
							<input name="right.rightText"/>
							<input type="hidden" name="cpage" value="${cpage}">
		   					<input type="hidden" name="count" value="${count}">
						</td>
						<th>权限描述</th>
						<td><input name="right.rightTip"/></td>
						<th>权限类型</th>
						<td>
							<select name="right.rightParentCode">
								<option value="" ${parent==null?"selected":""}>--请选择父节点--</option>
								<s:iterator value="#request.flist" var="r">
									<option value="${r.rightCode}" ${parent==r.rightCode?"selected":""}>${r.rightText}</option>
								</s:iterator>
							</select>
						</td>
					</tr>
				</table>
			</form>
			<br />
		<form action="right!rightList" method="post" id="form2">	
			<table class="query_form_table">
				<tr>
					<th>
						权限编号
					</th>
					<th>
						权限文本
					</th>
					<th>
						权限父节点
					</th>
					<th>
						权限类型
					</th>
					<th>
						权限描述
					</th>
					<th>
						权限操作
					</th>
				</tr>
				<s:iterator value="#request.list" var="r">
					<tr>
						<td>${r.rightCode}</td>
						<td>${r.rightText}</td>
						<td>${r.rightParentCode}</td>
						<td>${r.rightParentCode == 0 ? "父节点" : "子节点"}</td>
						<td>${r.rightTip}</td>
						<td>
							<img onclick="to('right!queryRight?right.rightCode=${r.rightCode}');" title="编辑" src="${pageContext.request.contextPath}/images/bt_edit.gif" class="op_button" />
		   					<img onclick="to('right!queryRight?right.rightCode=${r.rightCode}&a=1');" title="查看" src="${pageContext.request.contextPath }/images/bt_deal.gif" class="op_button" />
			   				<img onclick="delet(${r.rightCode});" title="删除" src="${pageContext.request.contextPath }/images/bt_del.gif" class="op_button" />
						</td>
					</tr>
				</s:iterator>
				
				<tr>
					<th colspan="7" class="pager">
						<div class="pager">
							<s:if test="#request.rightSum!=0">
								共${rightSum} 条记录 
								每页<input id="count" size="2" value="${count}" name="count">条
								第${cpage} 页/共 ${rightCount} 页
								<s:if test="#request.cpage==1 and #request.rightCount>1">
									<a href="right!rightList?cpage=${cpage+1}&count=${count}">下一页</a>
									<a href="right!rightList?cpage=${rightCount}&count=${count}">最后一页</a>
								</s:if>
								<s:elseif test="#request.rightCount>#request.cpage and #request.cpage!=1">
									<a href="right!rightList?cpage=1&count=${count}">第一页</a>
									<a href="right!rightList?cpage=${cpage-1}&count=${count}">上一页</a>
									<a href="right!rightList?cpage=${cpage+1}&count=${count}">下一页</a>
									<a href="right!rightList?cpage=${rightCount}&count=${count}">最后一页</a>
								</s:elseif>
								<s:elseif test="#request.rightCount==#request.cpage and #request.cpage!=1">
									<a href="right!rightList?cpage=1&count=${count}">第一页</a>
									<a href="right!rightList?cpage=${cpage-1}&count=${count}">上一页</a>
								</s:elseif>
								转到
								<input id="cpage" size="2" name="cpage" value="${cpage}" >页
								<button type="button" onclick="subGo(${allSum},'right!rightList')">GO</button>
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

