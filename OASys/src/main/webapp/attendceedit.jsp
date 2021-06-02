<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
	<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/box.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/checkbox.css" />

<link href="${pageContext.request.contextPath}/css/common/checkbox.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/common/iconfont.css"  rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/iconfont.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/My97DatePicker/WdatePicker.js"></script>
<title>Insert title here</title>
		
<style>

   
.box{
	position: relative;
    border-radius: 3px;
    background: #ffffff;
    border-top: 3px solid #d2d6de;
    margin-bottom: 20px;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
	padding: 10px 0px 10px 10px;
}

.box-body .form-group{
	margin-bottom: 15px;
}
.box .box-body .text{
	min-height: 114px;
}
.box .box-body .row .ischeck{
	width: 28px;
	height: 28px;
}
	.label-back {
    background-color: #6C7B8B;
    color: white;
    }
    .label-back:hover{
    	color: white !important;
    }
    
   
    .accpet{
    	position:absolute;
    	top:30px;
    	right:20px;
    	background-color: #00a65a;
    	color:white;
    	width: 74px;
    	height:25px;
    	font-size:10px;
    	padding: 0 0 2px;
    	text-align:center;
    	line-height: 25px;
    }
    .accpet:hover{
    	color: white !important;
    }
    
</style>
		<title></title>
		
	</head>
	<body>
		<div class="box increase">
			<form action="${pageContext.request.contextPath }/AoaAttendsList/update" method="post">
			<div class="box-header">
				<a class="btn label-back" href="javascript:void(0);"  onclick="window.history.back();"> 
					<span class="glyphicon glyphicon-chevron-left" ></span>返回</a>
			</div>
			<div class="box-body">
			
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">
							<span>状态</span>
						</label>
						<select class="form-control" name="statusId">
									<option value="10" ${aal.statusId==10?"selected":"" }>正常</option>
									<option value="11" ${aal.statusId==11?"selected":"" }>迟到</option>
									<option value="12" ${aal.statusId==12?"selected":"" }>早退</option>
						</select>
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">备注</label>
						<input name="attendsRemark"  class="form-control remark" value="${aal.attendsRemark }"/>
					</div>
					<input type="hidden" name="attendsId"  value="${aal.attendsId }" > 
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">
							<span>类型</span>
						</label>
						<select class="form-control" name="typeId" disabled="disabled">
									<option value="8" ${aal.typeId==8?"selected":""}>上班</option>
									<option value="9" ${aal.typeId==9?"selected":""}>下班</option>
									<option value="46" ${aal.typeId==46?"selected":""}>请假</option>
									<option value="47" ${aal.typeId==47?"selected":""}>出差</option>
						</select>
					</div>
				</div>
				
			</div>
			
			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存"  />
				<input class="btn btn-default active" id="cancel" type="submit" value="取消" onclick="window.history.back();"/>
			</div>
			</form>
		</div>
		
	</body>
</html>
