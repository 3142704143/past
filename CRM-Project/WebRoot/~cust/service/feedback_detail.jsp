<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function sub(){
		if($("#result").val()==""){
			alert("请输入处理结果！");
		}else if($("#statisfy").val()==""){
			alert("请选择满意度！");
		}else{
			$.post("cs!updateResult",$("#form1").serialize(),function(data){
   				to('cs!csList?c=1');
   			});
		}
	}
</script>
</head>
<body>

<div class="page_title">客户服务管理 &gt; 服务反馈</div>
<div class="button_bar">
	<button class="common_button" onclick="help('服务处理你不行就算了！');">帮助</button>
	<button class="common_button" onclick="back();">返回</button> 
	<button class="common_button" onclick="sub();">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${cs.svrId}</td>
		<th>服务类型</th>
		<td>${cs.svrType}</td>
	</tr>
	<tr>
		<th>概要</th>
		<td colspan="3">${cs.svrTitle}</td>
	</tr>	
	<tr>
		<th>客户</th>
		<td>${cs.svrCustName}</td>
		<th>状态</th>
		<td>已处理</td>
	</tr>	
	<tr>
		<th>服务请求</th>
		<td colspan="3">${cs.svrRequest}<br>
　</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${cs.svrCreateBy}</td>
		<th>创建时间</th>
		<td>${cs.svrCreateDate}</td>
	</tr>
	</table>
<br />
<table class="query_form_table" id="table3">
	<tr>
		<th>分配给</th>
		<td>${cs.svrDueTo}</td>
		<th>分配时间</th>
		<td>${cs.svrDueDate}</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table1">
	<tr>
		<th>服务处理</th>
		<td colspan="3">${cs.svrDeal}</td>
	</tr>
	<tr>
		<th>处理人</th>
		<td>${cs.svrDealBy}</td>
		<th>处理时间</th>
		<td>${cs.svrDealDate}</td>
	</tr>
</table>
<br />
<form action="" method="post" id="form1">
<table class="query_form_table" id="table2">
	<tr>
		<th>处理结果</th>
		<td>
			<input id="result" name="cs.svrResult" size="20" /><span class="red_star">*</span>
			<input type="hidden" value="${cs.svrId}" name="cs.svrId"/>
		</td>
		<th>满意度</th>
		<td>
			<select id="statisfy" name="cs.svrSatisfy">
				<option value="">--请选择--</option>
				<option value="5">☆☆☆☆☆</option>
				<option value="4">☆☆☆☆</option>
				<option value="3">☆☆☆</option>
				<option value="2">☆☆</option>
				<option value="1">☆</option>
			</select><span class="red_star">*</span></td>
	</tr>
</table>
</form>
</body>
</html>
