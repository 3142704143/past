<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/common.js"></script>
<script src="${pageContext.request.contextPath}/script/jquery-3.2.1.min.js"></script>
<SCRIPT type="text/javascript">
	function sub(){
		$.post("${pageContext.request.contextPath}/cust!update",$("#form").serialize(),function(data){
 				if(data=="No"){
 					alert("保存失败");
 				}else{
 					alert("保存成功");
 					to('cust!ctList');
 				}
  		});
	}
</SCRIPT>
</head>
<body>

<div class="page_title">客户信息管理 > 客户信息</div>
<div class="button_bar">
	<button class="common_button" type="button" onclick="help('抱歉，没有帮助');">帮助</button>
	<button class="common_button" type="button" onclick="to('cust!queryOne?ct.custNo=${c.custNo}&a=1');">联系人</button>
	<button class="common_button" type="button" onclick="to('cust!queryOne?ct.custNo=${c.custNo}&b=1');">交往记录</button>
	<button class="common_button" type="button" onclick="to('orders.html');">历史订单</button>
	<button class="common_button" type="button" onclick="back();">返回</button>
	
	<button class="common_button"  type="button" onclick="sub();">保存</button>
</div>
<form action="${pageContext.request.contextPath}/cust!update" method="post" id="form">
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td>${c.custNo}
				<input type="hidden" value="${c.custNo}" name="ct.custNo"/> 
				<input type="hidden" value="${c.custStatus}" name="ct.custStatus"/> 
		</td>
		<th>名称</th>
		<td><input name="ct.custName" value="${c.custName}"  required/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地区</th>
		<td>
			<select name="ct.custRegion">
				<option value="">--请选择--</option>
				<s:iterator value="#request.type" var="b">
					<option value="${b.dictItem}" ${b.dictItem==c.custRegion?"selected":""}>${b.dictItem}</option>
				</s:iterator>
			</select>
			<span class="red_star">*</span></td>
		<th>客户经理</th>
		<td>
			<select name="ct.custManagerId">
				<option value="">--请选择--</option>
				<s:iterator value="#request.khjl" var="u">
					<option value="${u.usrId}" ${u.usrId==c.custManagerId?"selected":""}>${u.usrName}</option>
				</s:iterator>
			</select><span class="red_star">*</span>
		</td>
	</tr>	
	<tr>
		<th>客户等级</th>
		<td>
			<select name="ct.custLevelLabel">
				<option value="">--请选择--</option>
				<s:iterator value="#request.type2" var="b">
					<option value="${b.dictItem}" ${b.dictItem==c.custLevelLabel?"selected":""}>${b.dictItem}</option>
				</s:iterator>
			</select><span class="red_star">*</span>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
	<tr>
		<th>客户满意度</th>
		<td>
			<select name="ct.custSatisfy">
					<option value="">未指定</option>
					<option value="5" ${c.custSatisfy==5?"selected":""}>☆☆☆☆☆</option>
					<option value="4" ${c.custSatisfy==4?"selected":""}>☆☆☆☆</option>
					<option value="3" ${c.custSatisfy==3?"selected":""}>☆☆☆</option>
					<option value="2" ${c.custSatisfy==2?"selected":""}>☆☆</option>
					<option value="1" ${c.custSatisfy==1?"selected":""}>☆</option>
			</select><span class="red_star">*</span>
		</td>
		<th>客户信用度</th>
		<td>
			<select name="ct.custCredit">
					<option value="">未指定</option>
					<option value="5" ${c.custCredit==5?"selected":""}>☆☆☆☆☆</option>
					<option value="4" ${c.custCredit==4?"selected":""}>☆☆☆☆</option>
					<option value="3" ${c.custCredit==3?"selected":""}>☆☆☆</option>
					<option value="2" ${c.custCredit==2?"selected":""}>☆☆</option>
					<option value="1" ${c.custCredit==1?"selected":""}>☆</option>
			</select><span class="red_star">*</span>
		</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table1">
	<tr>
		<th>地址</th>
		<td><input name="ct.custAddr"  value="${c.custAddr}"  /><span class="red_star">*</span>
		</td>
		<th>邮政编码</th>
		<td><input name="ct.custZip" value="${c.custZip}" size="20" /><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>电话</th>
		<td>
			<input value="${c.custTel}" name="ct.custTel" size="20"  /><span class="red_star">*</span></td>
		<th>传真</th>
		<td>
			<input value="${c.custFax}" name="ct.custFax" size="20"  /><span class="red_star">*</span>
		</td>
	</tr>	
	<tr>
		<th>网址</th>
		<td>
			<input value="${c.custWebsite}" name="ct.custWebsite" size="20"  /><span class="red_star">*</span>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table2">
	<tr>
		<th>营业执照注册号</th>
		<td><input value="${c.custLicenceNo}" name="ct.custLicenceNo" size="20" /></td>
		<th>法人</th>
		<td><input value="${c.custChieftain}" name="ct.custChieftain" size="20" /><span class="red_star">*</span>
		</td>
	</tr>
	<tr>
		<th>注册资金（万元）</th>
		<td>
			<input value="${c.custBankroll}" name="ct.custBankroll" size="20" /> </td>
		<th>年营业额</th>
		<td>
			<input value="${c.custTurnover}" name="ct.custTurnover" size="20" />
		</td>
	</tr>	
	<tr>
		<th>开户银行</th>
		<td>
			<input value="${c.custBank}" name="ct.custBank" size="20" /><span class="red_star">*</span>
		</td>
		<th>银行帐号</th>
		<td><input value="${c.custBankAccount}" name="ct.custBankAccount" size="20" /><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地税登记号</th>
		<td>
			<input value="${c.custLocalTaxNo}" name="ct.custLocalTaxNo" size="20" /></td>
		<th>国税登记号</th>
		<td><input value="${c.custNationalTaxNo}" name="ct.custNationalTaxNo" size="20" /></td>
	</tr>
</table>
</form>
<p>　</p>
</body>
</html>
