<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<
<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/box.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/checkbox.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/common/checkbox.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/role/roleset.css" />

<script>
	$(function() {
		
			$(".widths").each(
					function() {
						var $val = $(this).text();

						if ($val == "#") {
							var $this = $(this).parents("tr");
							$this.css("background-color",
									"rgba(255, 235, 59, 0.19)");
							$this.hover(function() {
								$this.css("background-color",
										"rgba(158, 158, 158, 0.09)");
							}, function() {
								$this.css("background-color",
										"rgba(255, 235, 59, 0.19)");
							})
						}
					})

			$(".menus").each(function() {
				var $val = $(this).text();
				if ($val == "菜单") {
					$(this).css("color", "#4caf50");
				} else {
					$(this).css("color", "#9e9e9e");
				}
			})
			
			 $("[name=show]:checkbox").click(function(){
				var $roleid=${r.roleId};
				var menu;
				var content;
				var pkid = $(this).attr("id");
				 if(this.checked){//选中
					menu=$(this).parents("td").siblings(".menuid").text();
					content=1;
				}else{//未选中
					 menu=$(this).parents("td").siblings(".menuid").text();
					 content=0;
				}
				 console.log(menu); console.log(content);
				 $.post("${pageContext.request.contextPath}/AoaRole/updateMenu",{"pkId":pkid,"roleId":$roleid,"isShow":content,"menuId":menu},function(){
					 
				 }) 
			 })
			
		});
</script>
<style>
.table>tbody>tr>td{
    border-top: 1px solid rgba(245, 245, 220, 0.29);
    }
</style>
</head>

<body style="background-color: #ecf0f5;">

	<div class="">
		<div class=" ">
			<div class="row">
				<div class="col-md-2">
					<h1 style="font-size: 24px; margin: 0;" class="">超级管理员</h1>
				</div>
				<div class="col-md-10 text-right">
					<a href="${pageContext.request.contextPath}/AoaRole/selectByName/1?name="><span class="glyphicon glyphicon-home"></span> 首页</a>
					> <a disabled="disabled">超级管理员</a>
				</div>
			</div>
			<div class="row" style="padding-top: 15px;">
				<div class="col-md-12">
					<div class="bgc-w box box-primary">
						<!--盒子头-->
						<div class="box-header">
							<a class="btn btn-sm label-back"
								href="javascript:history.back();"> <span
								class="glyphicon glyphicon-chevron-left"></span> 返回
							</a>
						</div>
						<!--盒子身体-->
						<div class="box-body no-padding">
							<div>
								<table class="table table-hover ">
									<tr>
										<th scope="col">ID</th>
										<th scope="col">名称</th>
										<th scope="col" class="widths">路径</th>
										<th scope="col">类型</th>
										<th scope="col">开启权限</th>
									</tr>
									
									<c:forEach items="${r.aoarolepowerlists}" var="a">
										<c:if test="${a.aoasysmenu.parentId==0}">
										<!-- 如果是父节点 -->
											<tr style="background-color:rgba(255, 235, 59, 0.19);" >
												<td class="menuid">${a.aoasysmenu.menuId}</td>
												<td><span>${a.aoasysmenu.menuName }</span></td>
												<td><span class="widths">${a.aoasysmenu.menuUrl }</span></td>
												<td><span class="menus">菜单</span></td>
												<td>
													<span class="labels">
														<label>
															<input type="checkbox" id="${a.pkId}" name="show" class="val" ${a.isShow==1? "checked":""}><i>✓</i>
														</label>
													</span>
												</td>
											</tr>
										<c:forEach items="${r.aoarolepowerlists}" var="aa">
											<c:if test="${aa.aoasysmenu.parentId==a.aoasysmenu.menuId }">
											<!-- 是该父节点下面的子节点 -->
												<tr>
													<td class="menuid">${aa.aoasysmenu.menuId}</td>
													<td><span>${aa.aoasysmenu.menuName }</span></td>
													<td><span class="widths">${aa.aoasysmenu.menuUrl }</span></td>
													<td><span class="menus">菜单</span></td>
													<td>
														<span class="labels">
															<label>
																<input type="checkbox" id="${aa.pkId}" name="show" class="val" ${aa.isShow==1? "checked":""}><i>✓</i>
															</label>
														</span>
													</td>
												</tr>
											</c:if>
										</c:forEach>
										</c:if>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>