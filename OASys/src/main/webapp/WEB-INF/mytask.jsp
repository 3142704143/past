<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

.bgc-w {
	background-color: #fff;
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
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">我的任务</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">我的任务</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12 thistable">
		<!--id="container"-->

<div class="bgc-w box box-primary">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">
			<a href="addtask" class="label " style="padding: 5px;"> <span
				class="glyphicon glyphicon-plus"></span>
			</a>
		</h3>
		<div class="box-tools">
			<div class="input-group" style="width: 150px;">
				<input type="text" class="form-control input-sm cha"
					placeholder="查找..." />
				<div class="input-group-btn chazhao">
					<a class="btn btn-sm btn-default"><span
						class="glyphicon glyphicon-search"></span></a>
				</div>
			</div>
		</div>
	</div>
	<!--盒子身体-->
	<div class="box-body no-padding">
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<thead>
					<tr>

						<th scope="col">类型</th>
						<th scope="col">标题</th>
						<th scope="col">发布时间</th>
						<th scope="col">发布人</th>
						<th scope="col">部门</th>
						<th scope="col">状态</th>
						<th scope="col">操作</th>
					</tr>
				</thead>
				<tbody >
										<tr>

						<td><span>私事</span></td>

						<td><span>搞点发票</span></td>
						<td><span>2019-1-18 1:00:56</span></td>

						<td><span>小李父斯基</span></td>
						<td><span>研发部</span></td>
						<td><span class="label label-warning">新任务</span></td>

						<td><a href="mytasksee.html?id=52"
							class="label xiugai"><span class="glyphicon glyphicon-search"></span>
								查看</a> </td>
					</tr>
					<tr>

						<td><span>公事</span></td>

						<td><span>统计报表</span></td>
						<td><span>2019-1-10 11:56:24</span></td>

						<td><span>小李父斯基</span></td>
						<td><span>研发部</span></td>
						<td><span class="label label-primary">进行中</span></td>

						<td><a href="mytasksee.html?id=51"
							class="label xiugai"><span class="glyphicon glyphicon-search"></span>
								查看</a> </td>
					</tr>
				</tbody>

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
					共<span>2</span>条 | 每页<span>10</span>条
					| 共<span>1</span>页
				</div>
			</div>
			<div style="width: 60%; float: left;">
				<div class="pageOperation">
				<!--判断是否是第一页  -->
					<a class="btn btn-sm btn-default no-padding tablefirst" disabled="disabled"	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-backward"></span></a> 
					<a class="btn btn-sm btn-default no-padding tableup"  disabled="disabled" 	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-left"></span></a> 
				<a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
						1
				</a>
				<!--判断是否是最后一页  -->
					<a class="btn btn-sm btn-default no-padding tabledown"  disabled="disabled" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-right"></span></a> 
					<a class="btn btn-sm btn-default no-padding tablelast" disabled="disabled" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-forward"></span></a> 
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
				 $('.thistable').load('mychaxun?page=0');
			 }
		});
		$('.tableup').on('click',function(){
			 if(true==false){
				 $('.thistable').load('mychaxun?page=-1');
			 }
		});
		$('.tabledown').on('click',function(){
			if(true==false){
				$('.thistable').load('mychaxun?page=1');
			 }
		});
		$('.tablelast').on('click',function(){
			if(true==false){
				$('.thistable').load('mychaxun?page=0');
			 }
			
		});
		
		/*类型、状态、时间的排序  */
		$('.thistype').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('mychaxun?type=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('mychaxun?type=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisstatus').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('mychaxun?status=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('mychaxun?status=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thistime').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('mychaxun?time=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('mychaxun?time=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisvisit').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('mychaxun?visitnum=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('mychaxun?visitnum=1&icon=glyphicon-triangle-bottom');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click', function() {
			var baseKey = $('.baseKey').val();
			console.log(baseKey);
			$('.thistable').load('mychaxun?baseKey='+baseKey+'');
		});
</script></div>
<script>
	$(function() {
		
		/* 分页插件按钮的点击事件 */
		
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('mychaxun?baseKey=baseKey');
		});
		
		$(".chazhao").click(function() {
			var con = $(".cha").val();
			$(".thistable").load("mychaxun", {title : con});
		});
	})
</script>
	</div>
</div>

