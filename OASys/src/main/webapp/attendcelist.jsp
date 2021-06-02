<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/box.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/checkbox.css" />
<link href="${pageContext.request.contextPath}/css/common/checkbox.css" rel="stylesheet" />
<style type="text/css">
/* .{
			width:1100px;
			
			} */
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.box-body {
	cursor: pointer;
}

.table {
	padding: 0 0 0 0 !important;
}

.table tr {
	background-color: white !important;
	border-bottom: 1px solid dashed !important;
}

.table .table-header {
	border-bottom: 1px solid dashed !important;
}

.box-header b:hover {
	background-color: #E7E7E7;
}

.box-header a {
	padding: 5px;
}

.box-body {
	padding: 0 0 0 0 !important;
}

.active {
	color: #000000;
}

.box-body .table-header .status {
	color: #72afd2;
}

.box-body  .table-header  .type {
	color: #72afd2;
}

.box-body .table-header span {
	width: 2px !important;
	height: 2px !important;
}

th .paixu:HOVER{
color:blue;
}

.box {
	margin-top: 10px !important;
}
</style>
<!-- <script>
$(function(){
	if($(".paixu").children().length==0){
		//如果该元素下面没有span就是那个上下箭头
		$(".paixu").css("color","blue");
	}
})
</script> -->
</head>

<body style="background-color: #ecf0f5;">
	<div class="row" style="padding-top:10px">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">考勤列表</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">考勤列表</a>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12 thistable">
<div class="bgc-w box box-primary">
				<div class="box-header" style="padding-bottom: 20px">
                  <a class="label label-success" href=""><span
			class="glyphicon glyphicon-refresh"></span>  刷新 </a>
					<div class="input-group" style="width:150px;float:right;top:-5px">
											<!-- <input type="text" class="form-control input-sm pull-right baseKey" value="" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change baseKetsubmit"></a>
											</div> -->
										</div>

				</div>
				<div class="box-body">
					<div class="table" style="padding-top: 15px;">
						<div class="">
							<table class="table table-hover table-striped">
								<tr class="table-header">
									<th scope="col" class="paixu thistype">类型</th>
									<th scope="col"><span class="paixu thistime">时间</span></th>
									<th scope="col">ip</th>
									<th scope="col">备注</th>
									<th scope="col"><span class="paixu thisstatus">状态</span></th>
								</tr>
								<c:forEach items="${list.list}" var="a">
									<tr>
										<td><span>${a.type.typeName}</span></td>
										<td ><span><fmt:formatDate value="${a.attendsTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
										<td><span>${a.attendsIp}</span></td>
										<td>${a.attendsRemark}</td>	
										<td><span class="label ${a.status.statusColor}">${a.status.statusName}</span></td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>


		
<div class="box-footer no-padding" style="margin-top: -20px;">
	<div style="padding: 5px;">
		<div id="page"
			style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
			<div style="width: 40%; float: left;">
					<div class="pageInfo" style="margin-left: 5px;">
						共<span>${list.total}</span>条 | 每页<span>10</span>条
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
		$('.tablefirst').on('click',function(){
			 if(true==false){
				 $('.thistable').load('attendcelisttable?page=0');
			 }
		});
		$('.tableup').on('click',function(){
			 if(true==false){
				 $('.thistable').load('attendcelisttable?page=-1');
			 }
		});
		$('.tabledown').on('click',function(){
			if(true==false){
				$('.thistable').load('attendcelisttable?page=1');
			 }
		});
		$('.tablelast').on('click',function(){
			if(true==false){
				$('.thistable').load('attendcelisttable?page=0');
			 }
			
		});
		
		/*类型、状态、时间的排序  */
		$('.thistype').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('attendcelisttable?type=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('attendcelisttable?type=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisstatus').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('attendcelisttable?status=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('attendcelisttable?status=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thistime').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('attendcelisttable?time=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('attendcelisttable?time=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisvisit').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('attendcelisttable?visitnum=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('attendcelisttable?visitnum=1&icon=glyphicon-triangle-bottom');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click', function() {
			var baseKey = $('.baseKey').val();
			console.log(baseKey);
			$('.thistable').load('attendcelisttable?baseKey='+baseKey+'');
		});
</script>			</div>		</div>
	</div>
</body>




</html>