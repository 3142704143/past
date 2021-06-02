<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/box.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common/checkbox.css" />
<link href="${pageContext.request.contextPath }/css/common/checkbox.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/common/iconfont.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/attendce/weektable.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/iconfont.js"></script> 
<script	type="text/javascript" src="${pageContext.request.contextPath }/plugins/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/attendce/weektable.js"></script>
</head>
	<body>
	<div class="row" style="padding-top:10px">
					<div class="col-md-2">
						<h1 style="font-size:24px;margin: 0;" class="">考勤周报表</h1>
					</div>
					<div class="col-md-10 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">考勤周报表</a>
					</div>
				</div>
		<div class="row">
	<div class="col-md-12">
		<div class="box">
			<div class="box-header ">
				<a class="label  label-back lastweek">
					<span class="glyphicon glyphicon-chevron-left"></span>
					上一周
				</a>
				
				<a class="label  label-back nextweek" >
					<span class="glyphicon glyphicon-chevron-right"></span>
					下一周
				</a>
				<span id="start"></span>
				至
				<span id="end"></span>
				<div class="input-group" style="width:150px;float:right;top:-5px">
											<input type="text" class="form-control input-sm pull-right baseKey" value="" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change baseKetsubmit"></a>
											</div>
		    </div>
			<div class="box-body">
			<div id="refresh" class="thistable">

<table class="table table-striped table-hover table-bordered table-responsive">
					<tr>
						<th>部门</th>
						<th>成员</th>
						<th>星期一</th>
						<th>星期二</th>
						<th>星期三</th>
						<th>星期四</th>
						<th>星期五</th>
						<th>星期六</th>
						<th>星期日</th>
					</tr>
		
							    <tr>
						<td>总经办</td>
						<td>朱丽叶</td>
			<td class="report">
			</td>
			<td class="report">
			</td>
			<td class="report">
			</td>
			<td class="report">
			</td>
			<td class="report">
			</td>
			<td class="report">
			</td>
			<td class="report">
			</td>
					</tr>
			</table>
			
<div class="box-footer no-padding" style="margin-top: -20px;">
	<div style="padding: 5px;">
		<div id="page"
			style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
			<div style="width: 40%; float: left;">
				<div class="pageInfo" style="margin-left: 5px;">
					共<span>1</span>条 | 每页<span>10</span>条
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
				 $('.thistable').load('realweektable?page=0');
			 }
		});
		$('.tableup').on('click',function(){
			 if(true==false){
				 $('.thistable').load('realweektable?page=-1');
			 }
		});
		$('.tabledown').on('click',function(){
			if(true==false){
				$('.thistable').load('realweektable?page=1');
			 }
		});
		$('.tablelast').on('click',function(){
			if(true==false){
				$('.thistable').load('realweektable?page=0');
			 }
			
		});
		
		/*类型、状态、时间的排序  */
		$('.thistype').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('realweektable?type=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('realweektable?type=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisstatus').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('realweektable?status=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('realweektable?status=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thistime').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('realweektable?time=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('realweektable?time=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisvisit').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('realweektable?visitnum=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('realweektable?visitnum=1&icon=glyphicon-triangle-bottom');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click', function() {
			var baseKey = $('.baseKey').val();
			console.log(baseKey);
			$('.thistable').load('realweektable?baseKey='+baseKey+'');
		});
</script>			</div>
			</div>
			
			</div>
			</div>
		</div>
</body>