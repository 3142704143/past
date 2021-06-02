<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
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
<!-- /.modal -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/modalTip.js" ></script>
<style type="text/css">
#thismodal .modal-dialog {
	width: 500px;
	top:20%;
}

#thismodal .modal-body .icon {
	height: 80px;
	width: 80px;
	margin: 20px auto;
	border-radius: 50%;
	color: #aad6aa;
	border: 3px solid #d9ead9;
	text-align: center;
	font-size: 44px;
}

#thismodal .modal-body .icon .glyphicon {
	font-size: 46px;
	top: 14px;
}

#thismodal .modal-p {
	margin: 20px auto;
}

#thismodal .modal-body .modal-p h2 {
	text-align: center;
}

#thismodal .modal-body .modal-p p {
	text-align: center;
	color: #666;
	font-size: 16px;
	padding-top: 8px;
	font-weight: 300;
}

#thismodal .modal-p .btn {
	margin-left: 40%;
	width: 100px;
	height: 40px;
}

#thismodal .modal-error .icon {
	color: #f27474;
	border: 3px solid #f27474;
}
</style>
<!-- 这里是执行返回失败的参数，并显示详细的信息； -->
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
<div class="modal fade in" id="thismodal" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body modal-success" style="display: none;">
				<div class="icon">
					<span class="glyphicon glyphicon-ok"></span>
				</div>
				<div class="modal-p">
					<h2>操作成功</h2>
					<!--<p style="">已回复</p>-->
					<div class="modal-p">
						<button type="button" class="btn btn-primary successToUrl" data-dismiss="modal">确定</button>
					</div>
				</div>
			</div>
			<div class="modal-body modal-error" style="display: none;">
				<div class="icon">
					<span class="glyphicon glyphicon-remove"></span>
				</div>
				<div class="modal-p">
					<h2 style="text-align: center;">错误信息</h2>
					<p class="modal-error-mess">此处将显示弹出框的错误提示信息</p>
					<div class="modal-p">
						<button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
					</div>
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">用户管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">用户管理</a>
		</div>
	</div>

	<div class="row" style="padding-top: 15px;">
		<div class="col-md-12 thistable">
			<!--id="container"-->
<div class="bgc-w box box-primary">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">
			<a href="${pageContext.request.contextPath }/AoaUser/toAdd" class="label label-success" style="padding: 5px;">
				<span class="glyphicon glyphicon-plus"></span> 新增
			</a> 
			<!-- <a href="daycalendar" class="label label-primary"
				style="padding: 5px; margin-left: 5px;"> <span
				class="glyphicon glyphicon-gift"></span> 生日
			</a> -->
		</h3>
		<div class="box-tools">
			<div class="input-group" style="width: 150px;">
				<input type="text" value="${name }" class="form-control input-sm baseKey"
					placeholder="查找..." />
				<div class="input-group-btn">
					<a class="btn btn-sm btn-default"><span
						class="glyphicon glyphicon-search baseKetsubmit"></span></a>
				</div>
			</div>
		</div>
	</div>
	<!--盒子身体-->
	<div class="box-body no-padding">
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<tr>
					
					<th scope="col">&nbsp;</th>
					<th scope="col">部门</th>
					<th scope="col">真实姓名</th>
					<th scope="col">用户名</th>
					<th scope="col">角色</th>
					<th scope="col">电话</th>
					<th scope="col">工资</th>
					<th scope="col">操作</th>
				</tr>
				<c:forEach items="${list.list }" var="v">
				<tr>
						<td>
						<!-- <img src="images/handsome.jpg" class="img-circle"
							style="width: 25px; height: 25px;" /> -->
								<img style="width: 25px;height: 25px;"
									class="profile-user-img img-responsive img-circle"
									src="${pageContext.request.contextPath}//images//${v.imgPath}" />
						</td>
						<td><span>${v.deptName }</span></td>
						<td><span>${v.realName }</span></td>
						<td><span>${v.userName }</span></td>
						<td><span>${v.name }</span></td>
						<td><span>${v.userTel }</span></td>
						<td><span>${v.salary }</span></td>
						
						<td><a  href="${pageContext.request.contextPath }/AoaUser/toUpdate?id=${v.userId}" class="label xiugai"><span
								class="glyphicon glyphicon-edit"></span> 修改</a> <a
							onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
							href="${pageContext.request.contextPath }/AoaUser/Delete?id=${v.userId}" class="label shanchu"><span
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
</div>
		</div>
	</div>
</body>
<script>
		/* 分页插件按钮的点击事件 */
		/* url是从后台接收过来的链接，sort是记录排序规则 */
		$('.tablefirst').on('click',function(){
			 if(true==false){
				 $('.thistable').load('usermanagepaging?page=0');
			 }
		});
		$('.tableup').on('click',function(){
			 if(true==false){
				 $('.thistable').load('usermanagepaging?page=-1');
			 }
		});
		$('.tabledown').on('click',function(){
			if(false==false){
				$('.thistable').load('usermanagepaging?page=1');
			 }
		});
		$('.tablelast').on('click',function(){
			if(false==false){
				$('.thistable').load('usermanagepaging?page=3');
			 }
			
		});
		
		/*类型、状态、时间的排序  */
		$('.thistype').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('usermanagepaging?type=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('usermanagepaging?type=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisstatus').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('usermanagepaging?status=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('usermanagepaging?status=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thistime').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('usermanagepaging?time=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('usermanagepaging?time=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisvisit').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('usermanagepaging?visitnum=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('usermanagepaging?visitnum=1&icon=glyphicon-triangle-bottom');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click', function() {
			var baseKey = $('.baseKey').val();
			var count=${count};
			if('${name}'!=baseKey){
				count=1;
			}
			window.location.href="${pageContext.request.contextPath }/AoaUser/SelectAll/"+count+"?name="+baseKey;
		});
		
		function fenye(count){
			var baseKey = $('.baseKey').val();
			if('${name}'!=baseKey){
				count=1;
			}
			window.location.href="${pageContext.request.contextPath }/AoaUser/SelectAll/"+count+"?name="+baseKey;
		}
		
</script>
<script type="text/javascript">
	$(".thistable").on("click",".usersearchgo",function(){
		var usersearch = $(".thistable .usersearch").val();
		console.log(usersearch);
		$(".thistable").load("usermanagepaging",{usersearch:usersearch});
	});
</script>
</html>