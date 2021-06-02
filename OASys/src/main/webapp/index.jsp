<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,
maximum-scale=1, user-scalable=no">
<link href="${pageContext.request.contextPath}/images/favicon1.ico" rel="icon" type="image/x-icon"/>
<link href="${pageContext.request.contextPath}/images/favicon1.ico" rel="shortcut icon" type="image/x-icon"/>
<title>控制面板主页</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/tocolor.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/homelist.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/skintheme.css" />

	<script type="text/javascript">
		$(function(){
			var themeSkin='blue';
			if(themeSkin=="blue"){
				toblue();
			}else if(themeSkin=="green"){
				togreen();
			}else if(themeSkin=="yellow"){
				toyellow();
			}else if(themeSkin=="red"){
				tored();
			}
		});
	</script>
<script>
	function changepath(path){
		$('iframe').attr('src',path);
	}
</script>
<style>
body {
  background-color: #f5f7f9;
  color: #6c6c6c;
  font: 300 1em/1.5em;
}
.container {
  left: 50%;
  position: absolute;
  top: 100px;
  transform: translate(-50%, -50%);
}

/* PROGRESS */
.progress {
  background-color: #e5e9eb;
  height: 0.25em;
  position: relative;
  width: 24em;
}
.progress-bar {
  animation-duration: 3s;
  animation-name: width;
  background-image: linear-gradient(to right, #4cd964, #5ac8fa, #007aff, #34aadc, #5856d6, #ff2d55);
  background-size: 24em 0.25em;
  height: 100%;
  position: relative;
}
.progress-shadow {
  background-image: linear-gradient(to bottom, #eaecee, transparent);
  height: 4em;
  position: absolute;
  top: 100%;
  transform: skew(45deg);
  transform-origin: 0 0;
  width: 100%;
}

/* ANIMATIONS */
@keyframes width {
  0%, 100% {
    transition-timing-function: cubic-bezier(1, 0, 0.65, 0.85);
  }	
  0% {
    width: 0;
  }
  100% {
    width: 100%;
  }
}
</style>

<div class="container">
	<div class="progress">
		<div class="progress-bar">
			<div class="progress-shadow"></div>
		</div>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/prefixfree.min.js"></script></head>
<body>

	<div class="main">
		<div class="container-fluid">
			<div class="row">
				<div id="smallDiv"
	style="width: 3%; background: red; float: left; display: none;">
	<div style="text-align: center; height: 50px; padding-top: 7px;" class="green-g">
		<a href="#"><img src="${pageContext.request.contextPath}/images/logo_1.png" /></a>
	</div>
	<div class="list-left"
		style="width: 100%; background: rgb(34, 45, 50);">
		<div style="padding: 10px 0 20px 6px;">
			<img src="${pageContext.request.contextPath}/images//647cbde6-3fba-4d8c-a50f-1a07f9bee417.jpg"
				style="width: 32px; height: 32px; border-radius: 50%;" />
		</div>
		<ul class="list-group">
			<li><a href="#"><span class="glyphicon glyphicon-asterisk"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-education"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-user"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-time"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-hourglass"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-bell"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-flag"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-calendar"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-plane"></span></a>
			</li>
			<li><a href="#"><span
					class="glyphicon glyphicon-folder-open"></span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-edit"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-earphone"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-comment"></span></a>
			</li>
		</ul>
	</div>
</div>
<!--把最顶上左侧的logo，栅格系统分2份-->
<div class="col-lg-2 col-md-2 smallDiv"
	style="padding: 0; margin: 0; display: block;">
	<div class="col-md-12 green-g">
		<a href="index.jsp" class="navbar-brand" style="padding: 8px 40px;"><img
			src="${pageContext.request.contextPath}/images/logo.png" /></a>
	</div>
	<div class="col-md-12 list-left"
		style="background: #222d32; height: 845px">
		<div class="user-panel">
			<div class="pull-left">
				<img id="rightTx" src="${pageContext.request.contextPath}/images//${u.imgPath}" class="img-circle user-image-left" />
			</div>
			<div class="pull-left info">
				<p style="color: #fff; line-height: 1.5;">
					<span>${u.userName}</span><br> <small><span
						class="glyphicon glyphicon-record" style="color: #00a65a;">
					</span> 在线</small>
				</p>
			</div>
		</div>
		<div class="thistable">
<div style="position: relative; margin-top: 20px;">
			<input type="text" placeholder="查找..." class="search-input cha" /> <span
				style="display: inline-block; height: 35px; width: 38px; background: red; position: absolute; text-align: center; line-height: 35px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; background: #374850;">
				<a href="#" class="chazhao"><span class="glyphicon glyphicon-search"
					style="color: white;"></span></a>
			</span>
		</div>
		<div class="panel-group" id="accordion" style="margin-top: 10px; margin-left: -12px;">
			<div class="panel panel-default">
				<c:forEach items="${u.aoarole.aoarolepowerlists}" var="m" varStatus="i">
					<c:if test="${m.aoasysmenu.parentId==0 and m.isShow==1}">
					<!-- 如果是父节点 -->
						<div class="panel-heading">
							<a class="open-menu green-left" href="#collapse${i.count}" data-toggle="collapse"
								data-parent="#accordion"> <span
								class="glyphicon ${m.aoasysmenu.menuIcon}"></span> <span>${m.aoasysmenu.menuName}</span> <span
								class="glyphicon glyphicon-menu-left pull-right"></span>
							</a>
						</div>
							<div id="collapse${i.count}" class="panel-collapse collapse ">
								<ul>
									<c:forEach items="${u.aoarole.aoarolepowerlists}" var="mm">
										<c:if test="${mm.aoasysmenu.parentId==m.aoasysmenu.menuId and mm.isShow==1}">
										<!-- 如果是这个父节点下的子节点 -->
												<li>
													<a href="javascript:changepath('${pageContext.request.contextPath}/${mm.aoasysmenu.menuUrl}');"> <span
															class="glyphicon ${mm.aoasysmenu.menuIcon}"></span> <span>${mm.aoasysmenu.menuName}</span>
													</a>
												</li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
<script>
	$(function(){
		$(".chazhao").click(function(){
			var $val=$(".cha").val();
			$(".thistable").load("menucha",{val:$val});
		});
	})
</script>		</div>
	</div>
</div>
 <!--顶层右侧的导航栏，栅格系统分10份-->
				<div class="col-md-10 moredeep" style="padding: 0; margin: 0;">
					<!-- 导航栏 -->
<div class="col-md-12 green" >
	<!--导航栏左侧按钮，-->
	<ul class="nav navbar-nav navbar-left" style="margin-left: -15px;">
		<li><a href="#" class="green-none white"><span
				class="glyphicon glyphicon-menu-hamburger"></span></a></li>
	</ul>
	<!--右侧导航栏-->
	<ul class="nav navbar-nav navbar-right moredeep">

		<li title="通知"><a href="javascript:changepath('informlist.jsp');" class="green-none white"><span
				class="glyphicon glyphicon-bell"></span>
									<span class="badge blue-badge badge-notice">1</span>
				</a>
		</li>
		<li title="邮件"><a href="javascript:changepath('mail.jsp');" class="green-none white"><span
				class="glyphicon glyphicon-envelope"></span>
					<span class="badge yellow-badge badge-mail">1</span>
				</a>
		</li>
		<li title="任务"><a href="javascript:changepath('mytask.jsp');" class="green-none white"><span
				class="glyphicon glyphicon-flag"></span>
					<span class="badge red-badge"></span>
				</a>
		</li>
		<li class="dropdown">
		<!--设置导航栏头像面板--> 
		<a href="#" class="green-none white" data-toggle="dropdown">
				<img id="leftTx" src="${pageContext.request.contextPath}/images//${u.imgPath}" class="user-image" /> <span>${u.userName}</span>
		</a> <!--设置点击按钮弹出用户面板层-->
			<ul class="dropdown-menu" style="padding:0;">
				<li class="user-header green"><img src="${pageContext.request.contextPath}/images//${u.imgPath}"
					class="img-circle" style="width: 100px;height:100px;" />
					<p class="white" style="">
						<span>${u.aoarole.roleName} </span> / <span>${u.dept.deptName}</span><br> <small>${u.position.name}</small>
					</p></li>
				<li class="user-footer">
					<div class="pull-left">
						<!-- <a href="javascript:changepath('userpanel.jsp');" class="btn btn-default">用户面板</a> -->
						<a href="javascript:changepath('notepaper/queryAll/1');" class="btn btn-default">用户面板</a>
					</div>
					<div class="pull-right">
						<a href="AoaUser/outLogin" class="btn btn-danger">退出登录</a>
					</div>
				</li>
			</ul>
		</li>

		<li title="历史记录" style="position: relative;cursor:pointer;"><a  id="history" class="green-none white" data-toggle="dropdown"><span
				class="glyphicon glyphicon-time"></span></a>
				
		<ul id="historypanel" class="dropdown-menu"
				style="position: absolute; background-color: #222d32;">
<li class="center">
	<a> <i class="glyphicon glyphicon-time"></i>历史记录
</a>
</li>
<li class="left">
<a href="javascript:changepath('typemanage.jsp');"><div class="">类型管理</div>
		<small>2018-12-22 11:57:57</small></a></li>
<li class="left">
<a href="javascript:changepath('auditing.jsp');"><div class="">流程审核</div>
		<small>2018-12-21 15:27:09</small></a></li>
<li class="left">
<a href="javascript:changepath('deptmanage.jsp');"><div class="">部门管理</div>
		<small>2018-12-21 15:04:58</small></a></li>
<li class="left">
<a href="javascript:changepath('userlogrecordmanage.jsp');"><div class="">在线用户</div>
		<small>2018-12-21 15:04:36</small></a></li>
<li class="left">
<a href="javascript:changepath('positionmanage.jsp');"><div class="">职位管理</div>
		<small>2018-12-21 15:04:30</small></a></li>
<li class="left">
<a href="javascript:changepath('usermanage.jsp');"><div class="">用户管理</div>
		<small>2018-12-21 14:23:02</small></a></li>
<li class="left">
<a href="javascript:changepath('/morelogrecord');"><div class="">在线用户</div>
		<small>2018-12-21 14:22:40</small></a></li>
<li class="left">
<a href="javascript:changepath('typemanage.jsp');"><div class="">类型管理</div>
		<small>2018-12-21 14:15:28</small></a></li>
<li class="left">
<a href="javascript:changepath('attendcelist.jsp');"><div class="">考勤列表</div>
		<small>2018-12-21 14:05:41</small></a></li>
<li class="left">
<a href="javascript:changepath('typemanage.jsp');"><div class="">类型管理</div>
		<small>2018-12-20 16:24:54</small></a></li>
<li class="left">
<a href="javascript:changepath('/mail');"><div class="">邮件管理</div>
		<small>2018-12-20 15:58:01</small></a></li>
<li class="left">
<a href="javascript:changepath('/accountmanage');"><div class="">账号管理</div>
		<small>2018-12-20 15:57:46</small></a></li>
<li class="left">
<a href="javascript:changepath('typemanage.jsp');"><div class="">类型管理</div>
		<small>2018-12-20 15:56:35</small></a></li>
<li>
	<div style="text-align: center; padding: 10px 15px;">
		<a href="javascript:changepath('morelog.jsp');">更多记录...</a>
	</div>
</li>		</ul>
	</li>
</ul>
</div>
<script>
	function changeemail(){
		var email=$('.badge-mail').text().trim();
		var emailNum=parseInt(email);
		if(emailNum>1){
			$('.badge-mail').text((emailNum-1));
		}else{
			$('.badge-mail').text("");
		}
	}
	function changeinformation(){
		var email=$('.badge-notice').text().trim();
		var emailNum=parseInt(email);
		if(emailNum>1){
			$('.badge-notice').text((emailNum-1));
		}else{
			$('.badge-notice').text("");
		}
	}
	//从右往左滑动效果
	$(function() {
		var num = 1;
		$("#history").click(function() {
			num++;
			if (num % 2 == 0) {
				$("#historypanel").css({ //从右边飞入，使用绝对定位来操作 
					"width" : "230px",
					"right" : "-230px"
				}).show().animate({
					"right" : "0"
				}, "fast");
			} else
				$("#historypanel").animate({
					"width" : "toggle"
				}, "slow");
			$('#historypanel').load('/userlogs');

		})
	})
</script>					<div class="col-md-12 list-right"
						style="background: #ecf0f5; position: relative; height: 845px;padding: 0;">
						<!--内容区块-->
						<iframe src="${pageContext.request.contextPath}/main.jsp" frameBorder="0" width="100%" height="92%"></iframe>
						<!-- 底部栏 -->
<!-- <div class="container-fluid" style="padding: 0;">
	<div class="row"> -->
		<div class="col-md-12" id="ss"
			style="background: white; padding: 15px; position: absolute; bottom: 0;height:50px;">
			<strong> Copyright © 2019 <a href="http://www.huaruiedu.com">华瑞IT教育</a>.
			</strong> All rights reserved.
			<div class="pull-right currt-time" style="display: inline-block;margin-right: 20px;">
				2019年01月14日，星期一</div>
		</div>
	<!-- </div>
</div> -->
<script type="text/javascript">

			$(function() {
				/*通过改变iframe来改变里面的内容块  */
				function changepath(path) {
					$('iframe').attr('src', path);
				}
				/*获取当前时间并显示在底部栏  */
				var day = new Date();
				var week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
				s = day.getFullYear() + "年";
				s = s + (day.getMonth()+1) + "月";
				s = s + day.getDate() + "日,";
				s = s + week[day.getDay()];
				console.log(s);
				$(".currt-time").text(s);

				
				$('.open-menu').on('click', function() {
					$('.glyphicon-menu-down').each(function() {
						$(this).removeClass('glyphicon-menu-down').addClass("glyphicon-menu-left");
					});
					console.log($(this).children('.pull-right').hasClass('glyphicon-menu-down'));
					if($(this).children('.pull-right').hasClass('glyphicon-menu-left')){
						$(this).children('.pull-right').removeClass('glyphicon-menu-left').addClass("glyphicon-menu-down");
					}
					else{
						$(this).children('.pull-right').removeClass('glyphicon-menu-down').addClass("glyphicon-menu-left");
					}
					
					$('.open-menu').each(function() {
						$(this).css("border-left", "3px solid transparent");
					});
					$(this).css("border-left", "3px solid #00a65a");
				});

				

				$('.right-btn-group').on('click', 'a', function() {

					var gly = $(this).children('button').children().hasClass('glyphicon-minus');
					var child = $(this).children('button').children('.glyphicon');
					if(gly) {
						child.removeClass('glyphicon-minus').addClass('glyphicon-plus');
					} else {
						child.removeClass('glyphicon-plus').addClass('glyphicon-minus');
					}

				});

				/* $('.right-btn-group a').on('click', function() {
					//获取右侧内容板的高度；设置面板的高度
					console.log($('.list-right').height());
					$('.list-left').height($('.list-right').height());
					$('.list-right').height($('.list-right').height());
				}) */
				//获取右侧内容板的高度；设置面板的高度
				if(window.screen.height<800){
					$('.list-left').height(850);
					$('.list-right').height(850);
				}else{
					$('.list-left').height(window.screen.height-50);
					$('.list-right').height(window.screen.height-50);
				}
				
				/* console.log("右边的高度"+$('.list-right').height());
				console.log(" 网页可见区域高："+ document.body.clientHeight);
				console.log(" 网页正文全文高："+ document.body.scrollHeight);
				console.log(" 屏幕分辨率的高："+ window.screen.height);
				console.log(" 屏幕可用工作区高度："+ window.screen.availHeight);
				console.log(" 网页正文全文高："+ document.body.scrollHeight);
				console.log(" 屏幕分辨率的高："+ window.screen.height); */ 
				/* $('.list-left').height($('.list-right').height()); */
				//				$('.list-right').height($('.list-right').height());

				//点击按钮，左侧菜单栏收缩，右侧拉伸过去
				$('.navbar-left li').on('click', function() {
					
					if($('#smallDiv').css('display') == "none") {
						$('.col-md-2').css('display', 'none');
						$('.col-md-10').removeClass('col-md-10').addClass('col-md-11');
						$('.col-md-11').css('width', '97%');
						$('#smallDiv').css({
							'display': 'block',
							'width': '3%'
						});
						$('.list-left').height($('.list-right').height());
					} else {
						$('#smallDiv').css('display', 'none');
						$('.col-md-2').css('display', 'block');
						$('.col-md-11').removeClass('col-md-11').addClass('col-md-10');
						$('.col-md-10').css('width', '');
						$('.list-left').height($('.list-right').height());
					}
				
				});
				
				

			});
		</script>					</div>
				</div>
			</div>
		</div>
	</div>


</body>

</html>