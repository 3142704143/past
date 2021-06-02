<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/box.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/checkbox.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/task/taskmanage.js"></script>
	<style type="text/css">
	a {
		color: black;
	}
	
	a:hover {
		text-decoration: none;
	}
	
	.label-back {
		background-color: #6C7B8B;
		color: white;
	}
				
	.label-back:hover {
		color: white !important;
		background-color: #5c666b !important;
	}
	
	.block {
		display: inline-block;
		width: 20px;
	}
	
	.co {
		color: blue;
	}
	
	.bl {
		color: black;
	}
	
	.commen {
		cursor: pointer;
	}
	
	</style>

</head>
<body>
	<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">角色管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="${pageContext.request.contextPath}/AoaRole/selectByName/1?name="><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
				disabled="disabled">角色管理</a>
		</div>
	</div>
	<div class="row" style="padding-top: 15px;">
		<div class="col-md-12 thistable">
			<!--id="container"-->
	<div class="bgc-w box box-primary">
				<!--盒子头-->
				<div class="box-header">
					<h3 class="box-title">
						<a href="${pageContext.request.contextPath }/roleadd.jsp" class="label label-success" style="padding: 5px;">
							<span class="glyphicon glyphicon-plus"></span> 新增
						</a>
					</h3>
					<div class="box-tools">
						<div class="input-group" style="width: 150px;">
								<input type="text" class="form-control input-sm cha" id="search"
									placeholder="查找..."  value="${name}"/>
							<div class="input-group-btn chazhao">
								<a class="btn btn-sm btn-default"><span
									class="glyphicon glyphicon-search"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="table-responsive">
						<table class="table table-hover ">
							<tr>
								
								<th scope="col">名称</th>
								<th scope="col">权限值</th>
								<th scope="col">操作</th>
							</tr>
							<c:forEach items="${list.list}" var="p">
							<tr>
								<td><span>${p.roleName }</span></td>
									 <td><span>${p.roleValue}</span></td>  
								<td>
								<a href="${pageContext.request.contextPath }/AoaRole/toSetting/${p.roleId}" class="label sheding">
								  <span class="glyphicon glyphicon-asterisk"></span> 设定</a>
								<a href="${pageContext.request.contextPath }/AoaRole/SelectOne?id=${p.roleId}&count=${count}" class="label xiugai">
								<span class="glyphicon glyphicon-edit"></span> 修改</a>
								<a href="${pageContext.request.contextPath }/AoaRole/delete?id=${p.roleId}&count=${count}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" class="label shanchu"><span
										class="glyphicon glyphicon-remove"></span> 删除</a></td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!--盒子尾-->
	<div class="box-footer no-padding" style="margin-top: -20px;">
		<div style="padding: 5px;">
			<div id="page"
				style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
				<div style="width: 40%; float: left;">
					<div class="pageInfo" style="margin-left: 5px;">
						共<span>${list.total}</span>条 | 每页<span>5</span>条
						| 共<span>${list.pages}</span>页
					</div>
				</div>
				<div style="width: 60%; float: left;">
					<div class="pageOperation">
						<!--判断是否是第一页  -->
						<c:if test="${count==1 and count!=list.pages}">
							<a  class="btn btn-sm btn-default no-padding tablefirst" disabled="disabled"	style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-backward"></span></a> 
							<a  class="btn btn-sm btn-default no-padding tableup"  disabled="disabled" 	style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-triangle-left"></span></a> 
							<a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
									${count}
							</a>
							<a  class="btn btn-sm btn-default no-padding tabledown" href="javascript:fenye(${count+1});" style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-triangle-right"></span></a> 
							<a  class="btn btn-sm btn-default no-padding tablelast" href="javascript:fenye(${list.pages});" style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-forward"></span>
							</a> 
						</c:if>
						<c:if test="${count==1 and count==list.pages}">已显示全部</c:if>
						<!-- 如果不是第一页也不是最后一页 -->
						<c:if test="${count>1 && count<list.pages }">
							<a href="javascript:fenye(1);" class="btn btn-sm btn-default no-padding tablefirst " 	style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-backward"></span></a> 
							<a href="javascript:fenye(${count-1});" class="btn btn-sm btn-default no-padding tableup"  	style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-triangle-left"></span></a> 
							<a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
									${count}
							</a>
							<a href="javascript:fenye(${count+1});" class="btn btn-sm btn-default no-padding tabledown" style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-triangle-right"></span></a> 
							<a href="javascript:fenye(${list.pages});" class="btn btn-sm btn-default no-padding tablelast" style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-forward"></span>
							</a> 
						</c:if>
						<!--判断是否是最后一页  -->
						<c:if test="${count==list.pages and count!=1}">
							<a href="javascript:fenye(1);" class="btn btn-sm btn-default no-padding tablefirst" 	style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-backward"></span></a> 
							<a href="javascript:fenye(${count-1});" class="btn btn-sm btn-default no-padding tableup"  	style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-triangle-left"></span></a> 
							<a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
									${count}
							</a>
							<a class="btn btn-sm btn-default no-padding tabledown"  disabled="disabled" style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-triangle-right"></span></a> 
							<a class="btn btn-sm btn-default no-padding tablelast"  disabled="disabled" style="width: 30px; height: 20px;"> <span
								class="glyphicon glyphicon-forward"></span>
							</a> 
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
			/* 分页插件按钮的点击事件 */
			/* url是从后台接收过来的链接，sort是记录排序规则 */
			/* $('.tablefirst').on('click',function(){
				 if(true==false){
					 $('.thistable').load('roleser?page=0');
				 }
			});
			$('.tableup').on('click',function(){
				 if(true==false){
					 $('.thistable').load('roleser?page=-1');
				 }
			});
			$('.tabledown').on('click',function(){
				if(true==false){
					$('.thistable').load('roleser?page=1');
				 }
			});
			$('.tablelast').on('click',function(){
				if(true==false){
					$('.thistable').load('roleser?page=0');
				 }
				
			});
			
			/*类型、状态、时间的排序  */
			/* $('.thistype').on('click', function() {
				if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
					$('.thistable').load('roleser?type=0&icon=glyphicon-triangle-top');
				} else {
					$('.thistable').load('roleser?type=1&icon=glyphicon-triangle-bottom');
				}
			});
			$('.thisstatus').on('click', function() {
				if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
					$('.thistable').load('roleser?status=0&icon=glyphicon-triangle-top');
				} else {
					$('.thistable').load('roleser?status=1&icon=glyphicon-triangle-bottom');
				}
			});
			$('.thistime').on('click', function() {
				if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
					$('.thistable').load('roleser?time=0&icon=glyphicon-triangle-top');
				} else {
					$('.thistable').load('roleser?time=1&icon=glyphicon-triangle-bottom');
				}
			});
			$('.thisvisit').on('click', function() {
				if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
					$('.thistable').load('roleser?visitnum=0&icon=glyphicon-triangle-top');
				} else {
					$('.thistable').load('roleser?visitnum=1&icon=glyphicon-triangle-bottom');
				}
			});  */
			/* 查找 */
			$('.chazhao').on('click', function() {
				var cha = $('.cha').val();
				console.log(cha);
				var count = ${count};
				if('${name}'!=cha){
					count=1;
				}
				window.location.href="${pageContext.request.contextPath}/AoaRole/selectByName/"+count+"?name="+cha;
			});
			
			function fenye(count){
				var cha = $('.cha').val();
				if('${name}'!=cha){
					count=1;
				}
				window.location.href="${pageContext.request.contextPath}/AoaRole/selectByName/"+count+"?name="+cha;
			}
	</script>		</div>
			
			<script>
			/*  $(function(){
	
						$('.chazhao').on('click',function(){
							var chazhao=$('.cha').val();
							$('.thistable').load('roleser?chazhao=chazhao');
						});
					
					   $(".cha").click(function(){
						   var con=$(".chazhao").val();
						   $(".thistable").load("roleser",{val:con});
					   });
					   
			 }); */
			</script>	</div>
	</div>
</body>
</html>