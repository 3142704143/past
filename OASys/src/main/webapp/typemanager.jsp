<%@ page language="java" contentType="text/html; charset=UTF-8"	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/box.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/checkbox.css" />
	<style type="text/css">
		a {
			color: black;
		}
		
		a:hover {
			text-decoration: none;
		}
		
		.bgc-w {
			background-color: #fff;
		}
	</style>

<title>Insert title here</title>
</head>
<body>
	<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">类型管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="${pageContext.request.contextPath }/AoaTypeList/SelectAll"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">类型管理</a>
		</div>
	</div>

	<div class="row" style="padding-top: 15px;">
		<div class="col-md-12">
			<!--id="container"-->
			<div class="bgc-w box box-primary">
				<!--盒子头-->
				<div class="box-header">
					<h3 class="box-title">
						<a href="${pageContext.request.contextPath }/typeadd.jsp" class="label label-success" style="padding: 5px;">
							<span class="glyphicon glyphicon-plus"></span> 新增
						</a>
						<a href="" class="label label-success" style="padding: 5px;margin-left:5px;">
							<span class="glyphicon glyphicon-refresh"></span> 刷新
						</a>
					</h3>
					<div class="box-tools">
						<div class="input-group" style="width: 150px;">
							<input type="text" class="form-control input-sm baseKey"
								placeholder="按名称/模块查找" />
							<div class="input-group-btn">
								<a class="btn btn-sm btn-default baseKeySubmit"><span
									class="glyphicon glyphicon-search"></span></a>
							</div>
						</div>
					</div>
				</div>
				<!--盒子身体-->
				<div class="box-body no-padding thistable">
					<div class="table-responsive">
						<table class="table table-hover">
							<tr>
								<th scope="col">模块</th>
								<th scope="col">类型</th>
								<th scope="col">排序值</th>
								<!-- <th scope="col">颜色</th> -->
								<th scope="col">操作</th>
							</tr>
							<c:forEach items="${list}" var="v">
							<tr>
								<td><span>${v.typeModel }</span></td>
								<td><span>${v.typeName }</span></td>
								<td><span>${v.sortValue }</span></td>
								<!-- <td><span>red</span></td> -->
								<td>
									<a href="${pageContext.request.contextPath }/AoaTypeList/toUpdate?id=${v.typeId }" class="label xiugai">
										<span class="glyphicon glyphicon-edit"></span>修改
									</a>
									<a title="查看详细信息" href="${pageContext.request.contextPath }/AoaTypeList/SelectOne?id=${v.typeId }" class="label xiugai">
										<span class="glyphicon glyphicon-search"></span> 查看
									</a> 
									<a onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"href="${pageContext.request.contextPath }/AoaTypeList/Delete?id=${v.typeId }" class="label shanchu">
										<span class="glyphicon glyphicon-remove"></span> 删除
									</a>
									</td>
							</tr>
							</c:forEach>
						</table>
					</div>				
			</div>
				<!--盒子尾-->
			</div>
		</div>
	</div>
</body>
	<script>
	$('.baseKeySubmit').on('click',function(){
		var name=$('.baseKey').val();
		window.location.href="${pageContext.request.contextPath }/AoaTypeList/Search?name="+name;
	});
</script>
</html>