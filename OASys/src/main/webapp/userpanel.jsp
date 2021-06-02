<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/box.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/checkbox.css" />
<style type="text/css">
.imgs {
	display: block;
	width: 100px;
	height: 100px;
}

.list-group li {
	margin-bottom: 10px;
	list-style-type: none;
}

a {
	text-decoration: none !important;
	color:black;
}
a:focus {
    outline:0px auto -webkit-focus-ring-color; 
    color:black;
    
}


.pa {
	margin-top: 12px;
	margin-bottom: 10px;
}

.nav-tabs-custom {
	background-color: #fff;
}

h1, h3 {
	font-family: 'Source Sans Pro', sans-serif;
}

.bo {
	margin-bottom: 12px;
}

.nav-tabs-custom>.nav-tabs>li:first-of-type {
	margin-left: 0;
}

.nav-tabs-custom>.nav-tabs>li.active {
	border-top-color: #3c8dbc;
}

.nav-tabs-custom>.nav-tabs>li {
	border-top: 3px solid transparent;
	margin-bottom: -2px;
	margin-right: 5px;
}

.nav-tabs-custom>.nav-tabs>li:first-of-type.active>a {
	border-left-color: transparent;
}

.nav-tabs-custom>.nav-tabs>li>a, .nav-tabs-custom>.nav-tabs>li>a:hover {
	background: transparent;
	margin: 0;
	color:
}

.nav-tabs-custom>.nav-tabs>li>a:hover {
	color: #999;
}

.nav-tabs-custom>.nav-tabs>li.active>a, .nav-tabs-custom>.nav-tabs>li.active:hover>a
	{
	background-color: #fff;
	color: #444;
}

.nav-tabs-custom>.nav-tabs>li>a {
	color: #444;
	border-radius: 0;
}

.nav-tabs>li>a {
	margin-right: 2px;
	line-height: 1.42857143;
	border: 0px;
	border-radius: 4px 4px 0 0;
}
.list-inline li{
	display:block;
}
.me{
    margin-right: 5px;
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">用户面板</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="${pageContext.request.contextPath }/notepaper/queryAll/1"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户面板</a>
	</div>
</div>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-3">

		<div class="bgc-w box box-solid " style="border-top: 3px solid blue;">
			<div class="box-header ">
				<span class="imgs center-block">
				<img style="width: 110px;height: 110px;"
					class="profile-user-img img-responsive img-circle"
					src="${pageContext.request.contextPath}/images//${u.imgPath}" />
					</span>
				<h3 class="profile-username text-center">
					<span id="ctl00_cphMain_lblFullName">${u.aoarole.roleName} </span>
				</h3>
				<p class="text-muted text-center">
					<span id="ctl00_cphMain_lblPosition">${u.dept.deptName}</span>（<span
						id="ctl00_cphMain_lblDepartment">${u.position.name}</span>）
				</p>
				<hr class="pa" />

				<ul class="list-group ">
					<li class=""><b>我的消息</b> <a href="##" class="pull-right me" ><span
							id="ctl00_cphMain_lblMsgCount">1</span></a></li>
					<hr class="pa" />
					<li class=""><b>我的邮件</b> <a href="mail.jsp" class="pull-right me"><span
							id="ctl00_cphMain_lblMailCount">0</span></a></li>
					<hr class="pa" />
				</ul>
				<a href="##" class="btn btn-primary btn-block wri" data-toggle="modal" data-target="#notepaper"><b><i
						class="glyphicon glyphicon-pushpin"></i> 写便签</b></a>
			</div>

		</div>

		<div class="bgc-w box box-solid" style="border-top: 3px solid blue;">
			<div class="box-header">
				<h3 class="box-title">基本资料</h3>
			</div>
			<div class="box-body">
				<strong><i class="glyphicon glyphicon-book"></i> 学历</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblEducation">${u.userSchool} ${u.userEdu}</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-earphone"></i> 手机</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblPhone">${u.userTel }</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-map-marker"></i> 地址</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblAddress">${u.address }</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-pencil"></i> 签名</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblNote">${u.userSign }</span>
				</p>
			</div>
		</div>
	</div>
	<div class="col-md-9" style="margin-bottom: 60px;">


		<div class=" nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="mynote active"><a href="${pageContext.request.contextPath }/notepaper/queryAll/${count}#memo" data-toggle="tab">我的便签</a></li>
				<li class="personset"><a href="#settings" data-toggle="tab" >个人设置</a></li>
			</ul>

			<form action="${pageContext.request.contextPath}/AoaUser/update" method="post" enctype="multipart/form-data" onsubmit="return empcheck();" >
			<div class="tab-content">

				<div class="active tab-pane thistable" id="memo">

<div class="box-body">

	<div class="bo">
		<table class="table1" cellspacing="0" border="0"
			id="ctl00_cphMain_GridView1"
			style="border-width: 0px; border-collapse: collapse; margin-bottom: 0px; width: 100%;">
			<c:forEach items="${NPlist.list}" var="n">
				<tr>
					<td>
						<div class="post" style="border: dashed 1px #eee; padding: 10px 10px 0 10px; background: #FFFFE0; margin: 0 5px 10px 5px;">
								<div class="user-block">
									<span class="papertitle" style="color: #8e8e8e;margin-right: 8px;">${n.title}</span>
									<a href="${pageContext.request.contextPath}/notepaper/delete/${n.notepaperId}/${count}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" id="paperdelete" class="pull-right " > 
										<i class='glyphicon glyphicon-remove-sign'></i></a>
										<span class="papertime" style="font-size: 8pt; color: #999;"><fmt:formatDate value="${n.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
									</div>
								<p class="title" style="display:none;">
									<span class="papertitle">${n.title}</span>
								</p>
								<p class="concent" style="margin-top: 8px;width: 93%;">
									<span class="papercontent">${n.concent }</span>
								</p>
								<p class="pk" style="display:none;">
									<span class="paperid">${n.notepaperId }</span>
								</p>
								<a  style="margin-top: -22px;"class="pull-right edit" data-toggle="modal" data-target="#notepaper"
									href="##"> <i class="glyphicon glyphicon-edit"></i>
											修改
								</a>
						</div>
					</td>
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
					共<span>${NPlist.total}</span>条 | 每页<span>5</span>条
					| 共<span>${NPlist.pages}</span>页
				</div>
			</div>
			<div style="width: 60%; float: left;">
				<div class="pageOperation">
				<!--判断是否是第一页  -->
				<c:if test="${count==1 and count!=NPlist.pages}">
					<a  class="btn btn-sm btn-default no-padding tablefirst" disabled="disabled"	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-backward"></span></a> 
					<a  class="btn btn-sm btn-default no-padding tableup"  disabled="disabled" 	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-left"></span></a> 
					<a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
							${count}
					</a>
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/${count+1}" class="btn btn-sm btn-default no-padding tabledown" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-right"></span></a> 
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/${NPlist.pages }" class="btn btn-sm btn-default no-padding tablelast" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-forward"></span>
					</a> 
				</c:if>
				<c:if test="${count==1 and count==NPlist.pages}">已显示全部</c:if>
				<!-- 如果不是第一页也不是最后一页 -->
				<c:if test="${count>1 && count<NPlist.pages }">
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/1" class="btn btn-sm btn-default no-padding tablefirst" 	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-backward"></span></a> 
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/${count-1}" class="btn btn-sm btn-default no-padding tableup"  	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-left"></span></a> 
					<a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
							${count}
					</a>
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/${count+1}" class="btn btn-sm btn-default no-padding tabledown" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-right"></span></a> 
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/${NPlist.pages }" class="btn btn-sm btn-default no-padding tablelast" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-forward"></span>
					</a> 
				</c:if>
				<!--判断是否是最后一页  -->
				<c:if test="${count==NPlist.pages and count!=1}">
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/1" class="btn btn-sm btn-default no-padding tablefirst" 	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-backward"></span></a> 
					<a href="${pageContext.request.contextPath}/notepaper/queryAll/${count-1}" class="btn btn-sm btn-default no-padding tableup"  	style="width: 30px; height: 20px;"> <span
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
				 $('.thistable').load('panel?page=0');
			 }
		});
		$('.tableup').on('click',function(){
			 if(true==false){
				 $('.thistable').load('panel?page=-1');
			 }
		});
		$('.tabledown').on('click',function(){
			if(false==false){
				$('.thistable').load('panel?page=1');
			 }
		});
		$('.tablelast').on('click',function(){
			if(false==false){
				$('.thistable').load('panel?page=2');
			 }
			
		});
		
		/*类型、状态、时间的排序  */
		$('.thistype').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('panel?type=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('panel?type=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisstatus').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('panel?status=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('panel?status=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thistime').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('panel?time=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('panel?time=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisvisit').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('panel?visitnum=0&icon=glyphicon-triangle-top');
			} else {
				$('.thistable').load('panel?visitnum=1&icon=glyphicon-triangle-bottom');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click', function() {
			var baseKey = $('.baseKey').val();
			console.log(baseKey);
			$('.thistable').load('panel?baseKey='+baseKey+'');
		});
</script><script>
		/* 分页插件按钮的点击事件 */
		
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('panel?baseKey=baseKey');
		});
		
	$(".edit").click(function(){
			
			var $content=$(this).siblings(".concent").children(".papercontent").text();
			var $papertitle=$(this).siblings(".title").children(".papertitle").text();
			var $paperid=$(this).siblings(".pk").children(".paperid").text();
			$(".noteid").val($paperid);
			$(".patitle").val($papertitle);
			$(".pacontent").val($content);
			
		});
		$(".wri").click(function(){
			$(".noteid").val("");
			$(".patitle").val("");
			$(".pacontent").val("");
			
		});
		
</script>
				</div>
				<div class="tab-pane" id="settings">
					<div class="box-body">
					<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-emp"></span>
					</div>
						<div class="row">

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label1">用户名</span></label> <input
									name="userName" type="text" value="${u.userName }" readonly="readonly"
									id="ctl00_cphMain_txtName" class="form-control" style="background-color:#fff;"
									onfocus="this.blur()" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label2">电话</span></label> <input
									name="userTel" type="text" value="${u.userTel }"
									id="ctl00_cphMain_txtPhone1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label3">真实姓名</span></label> <input
									name="realName" type="text" value="${u.realName }"
									id="ctl00_cphMain_txtFullName" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label5">Email</span></label> <input
									name="eamil" type="text"
									value="${u.eamil }" id="ctl00_cphMain_txtEmail1"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label10">地址</span></label> <input
									name="address" type="text" value="${u.address }"
									id="ctl00_cphMain_txtAddress1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label6">学历</span></label> <input
									name="userEdu" type="text" value="${u.userEdu }"
									id="ctl00_cphMain_txtEducation" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label7">毕业院校</span></label> <input
									name="userSchool" type="text" value="${u.userSchool }"
									id="ctl00_cphMain_txtSchool" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="icard">身份证号</span></label> <input
									name="userIdcard" type="text"
									value="${u.userIdcard }" id="ic"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label9">银行账号</span></label> <input
									name="bank" type="text"
									value="${u.bank }" id="ctl00_cphMain_txtBankAccount"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label16">性别</span></label> 
								<select 
									name="sex" id="ctl00_cphMain_ddlSex"
									class="form-control select2">
									<option ${u.sex=='男'?'selected':'' } value="男">男</option>
									<option ${u.sex=='女'?'selected':'' } value="女">女</option>
								</select>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label15">皮肤</span></label> <select
									name="themeSkin" id="ctl00_cphMain_ddlSkin"
									class="form-control select2">
									<option ${u.themeSkin=='blue'?'selected':'' } value="blue">经典蓝</option>
									<option ${u.themeSkin=='green'?'selected':'' } value="green">青草绿</option>
									<option ${u.themeSkin=='red'?'selected':'' } value="red">中国红</option>
									<option ${u.themeSkin=='yellow'?'selected':'' } value="yellow">商务黄</option>
									<option ${u.themeSkin=='purple'?'selected':'' } value="purple">高贵紫</option>
								</select>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label14">生日</span></label> <input
									name="birth" type="text" value="${u.birth }"
									id="Birthday" class="form-control" readonly="readonly" style="background-color:#fff;"/>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label13">签名</span></label> <input
									name="userSign" type="text" value="${u.userSign }"
									id="ctl00_cphMain_txtNote" class="form-control" />
							</div>
					
						</div>

						<div class="row">

							<hr />

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label11">新的密码</span></label> <input
									name="password1" type="password"
									id="Password1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label12">确认密码</span></label> <input
									name="password" type="password"
									id="Password2" class="form-control" />
							</div>

						</div>

						<div class="row">

							<hr />

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label17">头像</span></label>
								<div class="form-group">
									<div class="btn btn-default"
										style="position: relative; overflow: hidden;">
										<i class="glyphicon glyphicon-open"></i> 上传头像
										 <input type="file" name="img"
											style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;">
									</div>
									<p class="help-block">尺寸在512*512以内，大小在500KB以内</p>
								</div>
							</div>

						</div>

					</div>

					<div class="box-footer" style="position: relative; overflow: hidden;">
						<input type="submit" name="ctl00$cphMain$btnSave" value="保存"
							id="ctl00_cphMain_btnSave" class="btn btn-primary" />
					</div>

				</div>
			
			</div>
			<input type="hidden"  name="userId" value="${u.userId}"/>
		</form>
		</div>
	</div>
</div>


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
		<input type="hidden" value="${u.imgPath}" id="userImgPath"/>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<!-- /.modal -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/modalTip.js" ></script>


<!-- 这里是执行返回失败的参数，并显示详细的信息； -->
<script>
	$(function(){
		//var aaa = $("#userImgPath").val();
		//var img = window.parent.getElementById("leftTx");
		//img.src==aaa;
		getBirth();
		$(".edit").click(function(){
			
			var $content=$(this).siblings(".concent").children(".papercontent").text();
			var $papertitle=$(this).siblings(".title").children(".papertitle").text();
			var $paperid=$(this).siblings(".pk").children(".paperid").text();
			$(".noteid").val($paperid);
			$(".patitle").val($papertitle);
			$(".pacontent").val($content);
			
		});
		$(".wri").click(function(){
			$(".noteid").val("");
			$(".patitle").val("");
			$(".pacontent").val("");
			
		});
		$('.modalclose').on('click',function(){
			$('.control').each(function(){
				$(this).parent().removeClass("has-error has-feedback");
			});	
			$('.alert-danger').css("display","none");
			
		});
		
		/* 从身份证号当中截取出生年月 */
		function getBirth(){
			 if($.trim($("#ic").val()) != "") {
	             var date = "";
	             if($("#ic").val().length == 15) {
	                  date =  '19'+$("#ic").val().substr(6,2)+'-'+$("#ic").val().substr(8,2)+'-'+$("#ic").val().substr(10,2);
	            } else if ($("#ic").val().length == 18) {
	                date =  $("#ic").val().substr(6,4)+'-'+$("#ic").val().substr(10,2)+'-'+$("#ic").val().substr(12,2);
	            }
	           $("#Birthday").val(date);
	       }   
		}
		
		$('.thisclose').on('click', function() {
			$(this).parent().css('display', 'none');
		});
		// 错误信息输入框获取到焦点事件时，讲红色错误信息提醒取消
		$('.form-control').on("focus", function() {
			$(this).parent().removeClass("has-error has-feedback");
		});
		
		$("#ic").blur(function(){getBirth();});
		
	}); 
	
		
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function check() {
	console.log("开始进入了");
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	$('.control').each(function(index) {
		// 如果在这些input框中，判断是否能够为空
		if ($(this).val() == "") {
			// 获取到input框的兄弟的文本信息，并对应提醒；
			  var brother = $(this).siblings('.control-label').text();
			var errorMess = "[" + brother + "不能为空]";
			// 对齐设置错误信息提醒；红色边框
			$(this).parent().addClass("has-error has-feedback");
			$('.alert-danger').css('display', 'block');
			// 提示框的错误信息显示
			$('.error-mess').text(errorMess);
			
			isRight = 0;
			return false;
		} else {
			// 在这个里面进行其他的判断；不为空的错误信息提醒
			return true;
		}
	});
	
	if (isRight == 0) {
		//modalShow(0);
		 return false;
	} else if (isRight == 1) {
		//modalShow(1);
		 return true;
	}
//	return false;
}

//验证中文名称
function isChinaName(name) {
 var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
 return pattern.test(name);
}
 
// 验证手机号
function isPhoneNo(phone) { 
 var pattern = /^1[34578]\d{9}$/; 
 return pattern.test(phone); 
}
 
// 验证身份证 
function isCardNo(card) { 
 var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
 return pattern.test(card); 
} 
//验证邮箱
function isMailNo(mail){
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/; 
	return pattern.test(mail);
}
//验证卡号
function CheckBankNo(bankn) {
	var flag=true;
	 if(isNaN(bankn)) {
		 alertCheck("银行卡号必须全为数字!");
	     flag=false;
	   }
	
	var bankno = $.trim(bankn);
  　　if(bankno.length < 16 || bankno.length > 19) {
	 alertCheck("银行卡号长度必须在16到19之间!");
     flag=false;
   }
  
   //开头6位
   var strBin = "10,18,30,35,37,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,58,60,62,65,68,69,84,87,88,94,95,98,99";
   if(strBin.indexOf(bankno.substring(0, 2)) == -1) {
	 alertCheck("银行卡号开头6位不符合规范!");
	 flag=false;
   }
   
   return flag;
}
//验证密码
function isPasswordNo(password){
	var flag=true;
	var bankno = $.trim(password);
  　　if(bankno.length < 6 || bankno.length > 19) {
	 alertCheck("密码长度必须在6到19之间!");
     flag=false;
   }
	 if(!isNaN(bankno)) {
		 alertCheck("密码不能全为数字!");
	     flag=false;
	   }
	 return flag;
}

/**
 * 用户表单校验
 */
 
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function alertCheck(errorMess){
		
		$('.alert-danger').css('display', 'block');
		// 提示框的错误信息显示
		$('.error-emp').text(errorMess);
		
}

 function empcheck() {
 	console.log("开始进入了");
 	//提示框可能在提交之前是block状态，所以在这之前要设置成none
 	$('.alert-danger').css('display', 'none');
 	var isRight = 1;
 	$('#settings .form-control').each(function(index) {
 		// 如果在这些input框中，判断是否能够为空
 		if ($(this).val() == "") {
 			// 排除哪些字段是可以为空的，在这里排除
 			if (index == 13 ||index == 14) {
 				return true;
 			}
 			
 			// 获取到input框的兄弟的文本信息，并对应提醒；
 			var brother = $(this).siblings('.control-label').text();
 			var errorMess = "[" + brother + "不能为空]";
 			// 对齐设置错误信息提醒；红色边框
 			$(this).parent().addClass("has-error has-feedback");
 			$('.alert-danger').css('display', 'block');
 			// 提示框的错误信息显示
 			$('.error-emp').text(errorMess);
 			isRight = 0;
 			
 			return false;
 		} else {
 			if (index == 1) {
 				var $phone=$(this).val();
 				
 				
 				if(isPhoneNo($phone) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入正确的电话号码!");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 3){
 				var $mail=$(this).val();
 				if(isMailNo($mail) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入正确的邮箱!");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 7){
 				var $card=$(this).val();
 				if(isCardNo($card) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入正确的身份证号!");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 8){
 				var $bank=$(this).val();
 				if(CheckBankNo($bank) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 13){
 				var flag=true;
 				var $savepassword=$("#Password2").val();
 				var $newpassword=$(this).val();
 				if(isPasswordNo($newpassword) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					isRight = 0;
 					flag=false;
 				}else if($savepassword == ""){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("确认密码不能为空!");
 					isRight = 0;
 					flag=false;
 				}
 				
 				return flag;
 				
 			}else if(index == 14){
 				var $savepassword=$(this).val();
 				var $newpassword=$("#Password1").val();
 				if($savepassword != $newpassword){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入一致的密码!");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}
 			
 			// 在这个里面进行其他的判断；不为空的错误信息提醒
 			return true;
 		}
 	});
 	
 	if (isRight == 0) {
 		//modalShow(0);
 		 return false;
 	} else if (isRight == 1) {
 		//modalShow(1);
 		 return true;
 	}
// 	return false;
 }
</script>
<div class="modal fade" id="notepaper" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="modalclose close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">编辑您的便签</h4>
			</div>
			<form action="${pageContext.request.contextPath}/notepaper/insertOrupdate/${count}" method="post" onsubmit="return check();">
			<div class="modal-body">
				<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-mess"></span>
					</div>
				<input type="text" class="form-control noteid" name="notepaperId"  style="display:none;">
					<div class=" form-group">
						<label class="control-label">标题</label>
						 <input type="text" class="form-control patitle control" name="title" placeholder="请输入标题">
					</div>
					<div class=" form-group">
						<label class="control-label">内容</label>
						<textarea class="form-control pacontent control" style="min-height: 100px;" name="concent"></textarea>
					</div>
					<input type="hidden" name="notepaperUserId" value="${u.userId}"/>
			</div>
			<div class="modal-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存" />
			</div>
			</form>
		</div>
	</div>
</div>