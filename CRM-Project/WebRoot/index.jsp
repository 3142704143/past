<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>首页 - 统一开发平台 - UI库</title>

		<meta name="description" content="This is page-header (.page-header &gt; h1)" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<style>
			#mainframe{
					height: 510px;
				}
			
		</style>
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default">
			<div class="navbar-container" id="navbar-container">

				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="index.jsp" class="navbar-brand">
						<h3 style="padding:0px;margin:0px">客户关系管理系统</h3>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									欢迎您<br />
									${loginUser.usrName}(${loginUser.role.roleName})
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close"><%--
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										系统设置
									</a>
								</li>

								<li>
									<a href="profile.html">
									<a href="#">
										<i class="ace-icon fa fa-user"></i>
										个人信息设置
									</a>
								</li>

								<li class="divider"></li>--%>

								<li>
									<a href="user!outLogin">
										<i class="ace-icon fa fa-power-off"></i>
										退出登录
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">


				<ul class="nav nav-list">
					<li class="active">
						<a href="index.jsp">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> 总控制台 </span>
						</a>

						<b class="arrow"></b>
					</li>
					
					<s:iterator value="#session.loginUser.role.rights" var="r">
						<s:if test="#r.rightType=='Folder'">
						<!-- 如果是一级节点 -->
						<li class="">
							<a href="#"  class="dropdown-toggle">
								<s:if test="#r.rightCode==1 or #r.rightText=='营销关系'"><i class="menu-icon fa fa-desktop"></i></s:if>
								<s:elseif test="#r.rightCode==4 or #r.rightText=='客户管理'"><i class="menu-icon fa fa-list" ></i></s:elseif>
								<s:elseif test="#r.rightCode==7 or #r.rightText=='服务管理'"><i class="menu-icon fa fa-pencil-square-o"></i></s:elseif>
								<s:elseif test="#r.rightCode==13 or #r.rightText=='统计报表'"><i class="menu-icon fa fa-tag"></i></s:elseif>
								<s:elseif test="#r.rightCode==18 or #r.rightText=='基础数据'"><i class="menu-icon fa fa-file-o"></i></s:elseif>
								<s:elseif test="#r.rightCode==22 or #r.rightText=='权限设置'"><i class="menu-icon fa fa-caret-right"></i></s:elseif>
								<span class="menu-text"> ${r.rightText} </span>
								<b class="arrow fa fa-angle-down"></b>
							</a>
							<b class="arrow"></b>
							<ul class="submenu">
								<s:iterator value="#session.loginUser.role.rights" var="rr">
										<s:if test="#r.rightCode==#rr.rightParentCode">
											<!-- 如果是二级节点 -->
											<li class="">
												<a href="${pageContext.request.contextPath}/${rr.rightUrl}" target="mainframe">
													<i class="menu-icon fa fa-caret-right"></i>
													${rr.rightText}
												</a>
												<b class="arrow"></b>
											</li>
										</s:if>
								</s:iterator>
							</ul>
							</li>
						</s:if>
					</s:iterator>
				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				

				<div class="page-content" style="padding-bottom:0px;padding-top:0px;">
					<!-- /section:settings.box -->
					<div class="page-content-area">

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS 
								<div class="alert alert-block alert-info">
									<button type="button" class="close" data-dismiss="alert">
										<i class="ace-icon fa fa-times"></i>
									</button>

									<i class="ace-icon fa fa-check green"></i>

									<strong class="green">最新公告：</strong>
									欢迎使用CRM客户关系管理系统V1.0
								</div>-->
								<div >
									<iframe id="mainframe" name="mainframe" width=100%  frameborder=0 src="mywork.jsp"></iframe>
								</div><!-- /.row -->

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->

			<div class="footer" style="height:20px;padding-top:0px">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div >
						<span >
							 XXXX公司 &copy; 2014-2018  版权所有
						</span>
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!--[if !IE]> -->
			<script type="text/javascript">
				window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
			</script>
		<!-- <![endif]-->
		<!--[if IE]>
			<script type="text/javascript">
			 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
			</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		
		<script>
			$(function(){
				$(".submenu li").click(function(){
					$("#menu-toggler").click();
				})
			})
		</script>
	</body>
</html>
