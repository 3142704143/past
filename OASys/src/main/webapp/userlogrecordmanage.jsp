<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>          
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
</head>
<body>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">用户登陆记录</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="${pageContext.request.contextPath }/AoaUserLoginRecord/Search/1?name="><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户登陆记录</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12 thistable">
		<div class="bgc-w box box-primary">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a onclick="javascript:window.print();" class="label label-primary" style="padding: 5px;">
						<i class="glyphicon glyphicon-print"></i> <span>打印</span>
					</a>
				</h3>
				<div class="box-tools">
				
					<div class="input-group" style="width: 150px;">
						<input type="text" class="form-control input-sm baseKey"
							value="${name}"  placeholder="按用户查找..." />
						<div class="input-group-btn">
							<a class="btn btn-sm btn-default baseKetsubmit"><span
								class="glyphicon glyphicon-search"></span></a>
						</div>
					</div>
					
					
				</div>
			</div>
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div class="table-responsive">
					<table class="table table-hover table-striped">
						<tr>
							
							<th scope="col">用户</th>
							<th scope="col"><span class="paixu thistime">登陆时间
							</span></th>
							<th scope="col">IP</th>
							<th scope="col">使用浏览器</th>
						</tr>
						<c:forEach items="${list.list }" var="v">
							<tr>
								<td><span>${v.userName }</span></td>
								<td><span><fmt:formatDate value="${v.loginTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
								<td><span>${v.ipAddr }</span></td>
								<td><span>${v.browser}</span></td>
							</tr>
						</c:forEach>	
					</table>
				</div>
			</div>
			
<div class="box-footer no-padding" style="margin-top: -20px;">
	<div style="padding: 5px;">
		<div id="page"
			style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
				<div style="width: 40%; float: left;">
					<div class="pageInfo" style="margin-left: 5px;">
						共<span>${list.total}</span>条 | 每页<span>12</span>条
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
	</div>
</div>
</body>
<script>
		/* 分页插件按钮的点击事件 */
		/* url是从后台接收过来的链接，sort是记录排序规则 */
		$('.tablefirst').on('click',function(){
			 if(true==false){
				 $('.thistable').load('morelogrecordtable?page=0');
			 }
		});
		$('.tableup').on('click',function(){
			 if(true==false){
				 $('.thistable').load('morelogrecordtable?page=-1');
			 }
		});
		$('.tabledown').on('click',function(){
			if(false==false){
				$('.thistable').load('morelogrecordtable?page=1');
			 }
		});
		$('.tablelast').on('click',function(){
			if(false==false){
				$('.thistable').load('morelogrecordtable?page=7');
			 }
			
		});
		
		/*类型、状态、时间的排序  */
		$('.thistype').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('morelogrecordtable?type=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('morelogrecordtable?type=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisstatus').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('morelogrecordtable?status=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('morelogrecordtable?status=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thistime').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('morelogrecordtable?time=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('morelogrecordtable?time=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisvisit').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('morelogrecordtable?visitnum=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('morelogrecordtable?visitnum=1&icon=glyphicon-triangle-bottom');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click', function() {
			var baseKey = $('.baseKey').val();
			var count=${count};
			if('${name}'!=baseKey){
				count=1;
			}
			window.location.href="${pageContext.request.contextPath }/AoaUserLoginRecord/Search/"+count+"?name="+baseKey;
		});
		
		function fenye(count){
			var baseKey = $('.baseKey').val();
			if('${name}'!=baseKey){
				count=1;
			}
			window.location.href="${pageContext.request.contextPath }/AoaUserLoginRecord/Search/"+count+"?name="+baseKey;
		}
</script>
</html>