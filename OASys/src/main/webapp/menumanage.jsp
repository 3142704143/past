<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/common/box.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/common/checkbox.css" />
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

.table>tbody>tr>td {
	border-top: 1px solid rgba(245, 245, 220, 0.29);
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">菜单管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="${pageContext.request.contextPath }/AoaSysMenu/SelectAll?name="><span class="glyphicon glyphicon-home"></span> 首页</a>
		> <a disabled="disabled">菜单管理</a>
	</div>
</div>

<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box box-primary">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="${pageContext.request.contextPath }/AoaSysMenu/insert" class="label label-success" style="padding: 5px;"> <span class="glyphicon glyphicon-plus"></span>
						新增
					</a> <a href="${pageContext.request.contextPath }/AoaSysMenu/SelectAll?name=" class="label label-success"
						style="padding: 5px; margin-left: 5px;"> <span
						class="glyphicon glyphicon-refresh"></span> 刷新
					</a>
				</h3>
				<div class="box-tools">
					<div class="input-group" style="width: 150px;">
						<input type="text"  value="${name}" class="form-control input-sm baseKey"
							placeholder="按名称查找" />
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
							<th scope="col">名称</th>
							<th scope="col">图标</th>
							<th scope="col">路径</th>
							<th scope="col">类型</th>
							<th scope="col">排序</th>
							<th scope="col">显示</th>
							<th scope="col">操作</th>
						</tr>
						
						<c:forEach items="${list }" var="r" varStatus="z">
							<c:if test="${r.parentId==0}">
								<tr style="background: rgba(255, 235, 59, 0.19);">
									<td>${r.menuName }</td>
									<td><span class="glyphicon ${r.menuIcon }"></span></td>
									<td><span>${r.menuUrl }</span></td>
									<td><span> 父级 </span></td>
									<td><span>${r.sortId }</span></td>
									<td><span class="labels"><label><input
												type="checkbox"  ${r.isShow==1?"checked":"" } disabled><i>✓</i></label></span></td>
									<td>
									<!-- <a
										href=""
										class="label sheding"><span
											class="glyphicon glyphicon-arrow-up"></span> 上移</a> <a
										href=""
										class="label sheding"><span
											class="glyphicon glyphicon-arrow-down"></span> 下移</a> -->
										<a href="${pageContext.request.contextPath}/AoaSysMenu/update/${r.menuId}" class="label xiugai"><span class="glyphicon glyphicon-edit"></span> 修改</a>
									 	<a href="javascript:delet(${r.menuId});" class="label shanchu"><span class="glyphicon glyphicon-remove"></span> 删除</a>
									 	<a href="${pageContext.request.contextPath }/AoaSysMenu/insert?menuId=${r.menuId}" class="label xinzeng"><span class="glyphicon glyphicon-plus"></span> 新增</a></td>
								</tr>
								<c:forEach items="${list }" var="i">
									<c:if test="${i.parentId==r.menuId }">
										<tr>
											<td>${i.menuName }</td>
											<td><span class="glyphicon ${i.menuIcon }"></span></td>
											<td><span>${i.menuUrl }</span></td>
											<td><span>子级菜单栏</span></td>
											<td><span>${i.sortId }</span></td>
											<td><span class="labels"><label><input
														type="checkbox" ${i.isShow==1?"checked":"" } disabled><i>✓</i></label></span></td>
											<td><!-- <a
												href=""
												class="label sheding"><span
													class="glyphicon glyphicon-arrow-up"></span> 上移</a> <a
												href=""
												class="label sheding"><span
													class="glyphicon glyphicon-arrow-down"></span> 下移</a> --> <a
												href="${pageContext.request.contextPath}/AoaSysMenu/update/${i.menuId}" class="label xiugai"><span
													class="glyphicon glyphicon-edit"></span> 修改</a> <a
												onclick=""
												href="javascript:del(${i.menuId});" class="label shanchu"><span
													class="glyphicon glyphicon-remove"></span> 删除</a></td>
										</tr>			
									</c:if>
								</c:forEach>
							</c:if>		
						</c:forEach>
					</table>
				</div>
			</div>
			<!--盒子尾-->
		</div>
	</div>
</div>
<script>
	$('.baseKeySubmit').on('click', function() {
		var name = $('.baseKey').val();
		window.location.href="${pageContext.request.contextPath}/AoaSysMenu/SelectAll?name="+name;
	});
	
	function delet(menuId){
		$.post("${pageContext.request.contextPath}/AoaSysMenu/querySon/"+menuId,function(data){
			//如果有子节点
			if(data.trim()=="yes"){
				alert("请先删除该菜单下的子级菜单！");
				return;
			}else{
				if(confirm('删除该记录将不能恢复，确定删除吗？')){
					window.location.href="${pageContext.request.contextPath}/AoaSysMenu/delete?menuId="+menuId;
				}
			}
		});
	}
	
	function del(menuId) {
		if(confirm('删除该记录将不能恢复，确定删除吗？')){
			window.location.href="${pageContext.request.contextPath}/AoaSysMenu/delete?menuId="+menuId;
		}
	}
</script>