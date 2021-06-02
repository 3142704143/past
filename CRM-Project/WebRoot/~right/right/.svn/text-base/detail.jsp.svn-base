<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/script/common.js"></script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 权限管理 > 添加权限
		</div>
			<div class="button_bar">
				<button class="common_button" onclick="help('查询没有帮助？？？');">帮助</button>
	   			<button class="common_button" onclick="back();">返回</button>
			</div>
			<table class="query_form_table">
				<tr>
					<th>
						编号
					</th>
					<td>
						${right.rightCode}
					</td>
					<th>
						权限类型
					</th>
					<td>
						${right.rightParentCode == 0 ? "父节点" : "子节点"}
					</td>
					<th>
						父节点
					</th>
					<td>
						${right.rightParentCode}
					</td>
				</tr>
				<tr>
					<th>
						权限文本
					</th>
					<td>
						${right.rightText}
					</td>
					<th>
						权限URL
					</th>
					<td>
						${right.rightUrl}
					</td>
					<th>权限描述</th>
					<td>
						${right.rightTip}
					</td>
				</tr>
			</table> 
	</body>
</html>

