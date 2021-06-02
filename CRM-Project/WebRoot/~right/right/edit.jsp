<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/script/common.js"></script>
		<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
		<script>
			$(function(){
				$("table tr td input[name='right.rightCode']").prop("readonly",true);
			});
			function toupdate(){
	   			$.post("right!toUpdateRight",$("#rightForm").serialize(),function(data){
	   				if(data=="No"){
	   					alert("编辑失败");
	   				}else{
	   					alert("编辑成功");
	   					to('right!rightList');
	   				}
	   			});
	   		}
			function change(){
				if($("#type").val()=="Document"){
					$.post("${pageContext.request.contextPath}/right!queryType",function(data){
						if(data!=null){
							$("#parent").empty();
							data.forEach(function(item,index){
								$("#parent")[0].innerHTML+="<option value='"+item.rightCode+"'>"+item.rightText+"</option>";
							});
						}
		   			},"json");
				}else{
					$("#parent").empty();
					$("#parent")[0].innerHTML+="<option value='0'>--无需选择--</option>";
				}
			}
			</script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 权限管理 > 编辑权限
		</div>
			<div class="button_bar">
				<button class="common_button" onclick="help('编辑都不会，你明天不用来了');">帮助</button>
		   		<button class="common_button" onclick="back();">返回</button>
				<input class="common_button"  value="保存" type="button"  onclick="toupdate()">
			</div>
		<form action="" method="post" id="rightForm">
			<table class="query_form_table">
				<tr>
					<th>
						编号
					</th>
					<td>
						<s:textfield name="right.rightCode" ></s:textfield>
					</td>
					<th>
						权限类型
					</th>
					<td>
						<select id="type" name="right.rightType" onchange="change()">
							<option value="Folder" ${right.rightType=="Folder"?"selected":""}>父节点</option>
							<option value="Document" ${right.rightType=="Document"?"selected":""}>子节点</option>
						</select>
					</td>
					<th>
						父节点
					</th>
					<td>
						<select id="parent" name="right.rightParentCode">
							<s:if test="#request.right.rightType=='Folder'">
								<option value="0">--无需选择-- </option>
							</s:if>
							<s:else>
								<s:iterator value="#request.flist" var="r">
									<option value="#r.rightCode" ${r.rightCode==right.rightParentCode?"selected":""}>${r.rightText}</option>
								</s:iterator>
							</s:else>
						</select>
					</td>
				</tr>
				<tr>
					<th>
						权限文本
					</th>
					<td>
						<s:textfield name="right.rightText"></s:textfield>
					</td>
					<th>
						权限URL
					</th>
					<td>
						<s:textfield name="right.rightUrl"></s:textfield>
					</td>
					<th>权限描述</th>
					<td>
						<s:textfield name="right.rightTip"></s:textfield>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>

