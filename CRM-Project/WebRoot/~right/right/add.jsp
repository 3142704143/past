<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/script/common.js"></script>
		<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
		<script>
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
			function sub(){
				if($("#text").val()=="" || $("#url").val()=="" || $("#tip").val()==""){
					alert("资料填写不完整！");
					return false;
				}
			}
		</script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 权限管理 > 添加权限
		</div>
		<form action="${pageContext.request.contextPath}/right!add" method="post" onsubmit="return sub()">
			<div class="button_bar">
				<button class="common_button" type="button" onclick="help('添加权限都不会，吃粑粑去吧');">帮助</button>
		   		<button class="common_button" type="button" onclick="back();">返回</button>
				<input class="common_button"  value="保存" type="submit" >
			</div>
			<table class="query_form_table">
				<tr>
					<th>
						权限类型
					</th>
					<td>
						<select id="type" name="right.rightType" onchange="change()">
							<option value="Folder">父节点</option>
							<option value="Document" >子节点</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>
						父节点
					</th>
					<td>
						<select id="parent" name="right.rightParentCode">
							<option value="0">--无需选择-- </option>
						</select>
					</td>
				</tr>
				<tr>
					<th>
						权限文本
					</th>
					<td>
						<input id="text" name="right.rightText"/>
					</td>
				</tr>
				<tr>
					<th>
						权限URL
					</th>
					<td>
						<input id="url" name="right.rightUrl"/>
					</td>
				</tr>
				<tr>
					<th>权限描述</th>
					<td>
						<input id="tip" name="right.rightTip"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
