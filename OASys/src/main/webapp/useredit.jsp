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
<script type="text/javascript" src="${pageContext.request.contextPath }/plugins/My97DatePicker/WdatePicker.js"></script>
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
		<h1 style="font-size: 24px; margin: 0;" class="">用户管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box">
			<!--盒子头-->
			<form action="${pageContext.request.contextPath }/AoaUser/Update" method="post" onsubmit="return check();">
				<div class="box-header">
					<h3 class="box-title">
						<a href="javascript:history.back();" class="label label-default" style="padding: 5px;">
							<i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
						</a>
					</h3>
				</div>
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="box-body">
						<div class="alert alert-danger alert-dismissable" role="alert"
							style="display: none;">
							错误信息:<button class="close thisclose" type="button">&times;</button>
							<span class="error-mess"></span>
						</div>
						<div class="row">
								<div class="col-md-6 form-group">
									<label class="control-label"><span>用户名</span></label> <input
										name="userName" readonly="readonly" class="form-control" value="${au.userName }"/>
								</div>
							
							<div class="col-md-6 form-group">
								<label class="control-label"><span>电话</span></label> <input
									name="userTel" class="form-control" value="${au.userTel }"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>真实姓名</span></label> <input
									name="realName" class="form-control" value="${au.realName }"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>Email</span></label> <input
									name="eamil" class="form-control" value="${au.eamil}"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>地址</span></label> <input
									name="address" class="form-control" value="${au.address }"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>学历</span></label> <input
									name="userEdu" class="form-control" value="${au.userEdu }"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>毕业院校</span></label> <input
									name="userSchool" class="form-control" value="${au.userSchool }"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>身份证号</span></label> <input
									name="userIdcard" class="form-control" value="${au.userIdcard }"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>银行账号</span></label> <input
									name="bank" class="form-control" value="${au.bank }"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>部门</span></label> 
								<select class="deptselect form-control" name="deptId">
									<c:forEach items="${adsList}" var="v">
										<option ${au.deptId==v.deptId?"selected":"" }  value="${v.deptId }">${v.deptName }</option>
									</c:forEach>	
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>性别</span>
								</label> <select class="form-control" name="sex">
									<option ${au.sex=="男"?"selected":"" } value="男">男</option>
									<option  ${au.sex=="女"?"selected":"" } value="女">女</option>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>职位</span></label> 
								<select class="positionselect form-control" name="positionId">
									<c:forEach items="${apsList}" var="v">
										<option ${au.positionId==v.positionId?"selected":"" }  value="${v.positionId }">${v.name }</option>
									</c:forEach>
										
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>角色</span>
								</label> 
								<select class="form-control" name="roleId">
									<c:forEach items="${arsList}" var="v">
										<option ${au.roleId==v.roleId? "selected":"" } value="${v.roleId }">${v.roleName }</option>
									</c:forEach>
										
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>工资</span></label> <input
									name="salary" class="form-control" value="${au.salary }"/>
							</div>
							
							
							<!-- <div class="col-md-6 form-group">
								<label class="control-label">生日</label> <input
									name="birth" class="form-control" id="start" onclick="WdatePicker()" value="1986-2-3 0:00:00"/>
							</div> -->
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>皮肤</span>
								</label> <select class="form-control" name="themeSkin">
									<option ${au.themeSkin=="blue"?"selected":""} value="${au.themeSkin}">经典蓝</option>
									<option ${au.themeSkin=="green"?"selected":""} value="${au.themeSkin}">原谅绿</option>
									<option ${au.themeSkin=="red"?"selected":""} value="${au.themeSkin}">姨妈红</option>
									<option ${au.themeSkin=="yellow"?"selected":""} value="${au.themeSkin}">shit黄</option>
								</select>
							</div>
							<input type="hidden" name="userId" value="${au.userId }"/>
						</div>
	
						<!--判断一下 请求参数的值  进行显示-->
							<div class="row">
								<hr />
								<!-- <div class="col-md-6">
									<label class="control-label"><span>头像</span></label>
									<div style="padding: 10px;">
										<img src="img/1.jpg"
											style="width: 100px; height: 100px; border-radius: 100px;" />
									</div>
									<div class="btn btn-default"
										style="position: relative; overflow: hidden;">
										<i class="glyphicon glyphicon-open"></i> 上传头像 <input type="file"
											name="file"
											style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;" />
									</div>
								</div> -->
								<div class="col-md-6">
									<label class="control-label"><span>重置密码</span></label> <br>
									<span class="labels"><label><input name="password" type="checkbox" value="123"><i>✓</i></label></span>
								</div>
							</div>
					</div>
				</div>
				<!--盒子尾-->
				<div class="box-footer">
					<input class="btn btn-primary" id="save" type="submit" value="保存" />
					<input class="btn btn-default" id="cancel" type="submit" value="取消"
						onclick="window.history.back();" />
				</div>
			</form>
		</div>
	</div>
</div>

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
</body>
<!-- 这里是执行返回失败的参数，并显示详细的信息； -->
<script type="text/javascript">
$(".usernameonliy").on("blur",function(){
	console.log("改变了！！~~");
	$.post("useronlyname",{"username":$(this).val()},function(data){
		console.log(data);
		$(".usernameonliyvalue").val(data);
	});
}); 
$(".usernameonliy").focus(function(){
	$(this).parent().removeClass("has-error has-feedback");
	$('.alert-danger').css('display', 'none');
});


/* if(index == 0){
	var $username = $(this).val();
	
	$.ajax(url:"useronlyname",{"username",$username},success:function(data){
		console.log(data)
		if(!data){
			$(".usernameonliy").parent().addClass("has-error has-feedback");
				alertCheck("用户名已存在");
				isRight = 0;
	 			return false;
		}
	});
	
} */

$(".deptselect").on("change",function(){
	//alert("部门选择变化");
	var selectdeptid = $(this).val();
	
	$.post("selectdept",{selectdeptid:selectdeptid},function(data){
		$(".positionselect").empty();
		
		//console.log(data);
		$.each(data,function(i,item){
			var potion = $("<option value="+item.id+">"+item.name+"</option>");
			$(".positionselect").append(potion);
		});
	});
	
});


/* $('.successToUrl').on('click',function(){
	window.location.href='/testsysmenu';
});
 */
function alertCheck(errorMess){
	
	$('.alert-danger').css('display', 'block');
	// 提示框的错误信息显示
	$('.error-mess').text(errorMess);
	
}
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function check() {
	console.log("开始进入了");
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	$('.form-control').each(function(index) {
		// 如果在这些input框中，判断是否能够为空
		if ($(this).val() == "") {
			// 排除哪些字段是可以为空的，在这里排除
			if (index == 9 || index == 10 || index == 11 || index == 12 || index == 13 || index == 15) {
				return true;
			}
			// 获取到input框的兄弟的文本信息，并对应提醒；
			var brother = $(this).siblings('.control-label').text();
			var errorMess = "[" + brother + "输入框信息不能为空]";
			// 对齐设置错误信息提醒；红色边框
			$(this).parent().addClass("has-error has-feedback");
			$('.alert-danger').css('display', 'block');
			// 提示框的错误信息显示
			$('.error-mess').text(errorMess);
			// 模态框的错误信息显示
			$('.modal-error-mess').text(errorMess);
			isRight = 0;
			return false;
		} else {
			if(index == 0){
				
				var aaa= $(".usernameonliyvalue").val();
				console.log("aaaa");
				console.log(aaa);
				console.log("aaaa");
				if(aaa=="false"){
					console.log("进来了0");
					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("用户名已存在");
 					isRight = 0;
 		 			return false;
				}
				
			}
			
			
			if(index == 1){
				var $tel = $(this).val();
				
				if(isPhoneNo($tel) == false){
					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("手机格式错误");
 					isRight = 0;
 		 			return false;
				}
			}
			if(index == 3){
				var $email = $(this).val();
				
				if(isMailNo($email) == false){
					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("邮箱格式错误");
 					isRight = 0;
 		 			return false;
				}
			}
			if(index == 7){
				var $idcard = $(this).val();
				
				if(isCardNo($idcard) == false){
					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("错误身份证");
 					isRight = 0;
 		 			return false;
				}
			}
			if(index == 8){
				var $bank = $(this).val();
				
 				if(CheckBankNo($bank) == false){
 					$(this).parent().addClass("has-error has-feedback");
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
//	return false;
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
</script>
</html>