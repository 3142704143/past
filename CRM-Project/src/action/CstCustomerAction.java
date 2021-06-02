package action;

import java.util.ArrayList;
import java.util.List;

import util.AjaxReturnData;
import util.responseInfo;

import dao.CommonDao;
import entity.CstActivity;
import entity.CstCustomer;
import entity.CstLinkman;
import entity.Orders;
import entity.OrdersLine;
import entity.SalChance;
import entity.SysUser;

public class CstCustomerAction extends BaseAction {
	private CommonDao cd;
	private CstCustomer ct;
	private CstLinkman ck;
	private CstActivity ca;
	private Orders od;
	private String tj;
	private int cpage=1;
	private int count=8;
	
	public String queryAll(){
		String[] hql = new String[4];
		hql[0] = "select count(custNo)";
		hql[2] = " from CstCustomer";
		if(tj==null){
			tj="等级";
		}
		if(tj!=null && !"".equals("tj")){
			if(tj.equals("等级")){
				hql[1] = ",custLevelLabel";
				hql[3] = " group by custLevelLabel";
			}
			if(tj.equals("信用度")){
				hql[1] = ",custCredit";
				hql[3] = " group by custCredit";
			}
			if(tj.equals("满意度")){
				hql[1] = ",custSatisfy";
				hql[3] = " group by custSatisfy";
			}
		}
		String hqls = "";
		for (int i=0;i<hql.length;i++) {
			hqls+=hql[i];
		}
		List list = cd.list(hqls);
		req.put("list", list);
		req.put("tj1",tj);
		return SUCCESS;
	}
	
	//根据条件查询客户信息
	public String ctList(){
		String hql = "from CstCustomer where 1=1";
		List<Object> params = new ArrayList<Object>();
		if (ct!=null) {
			if (ct.getCustNo()!=null && !"".equals(ct.getCustNo())) {
				hql +=" and custNo = ?";
				params.add(ct.getCustNo());
			}
			if (ct.getCustName()!=null && !"".equals(ct.getCustName())) {
				hql +=" and custName like ?";
				params.add("%"+ct.getCustName()+"%");
			}
			if (ct.getCustRegion()!=null && !"".equals(ct.getCustRegion())) {
				hql +=" and custRegion = ?";
				params.add(ct.getCustRegion());
			}
			if (ct.getCustLevelLabel()!=null && !"".equals(ct.getCustLevelLabel())) {
				hql +=" and custLevelLabel = ?";
				params.add(ct.getCustLevelLabel());
			}
			if (ct.getCustManagerName()!=null && !"".equals(ct.getCustManagerName())) {
				hql +=" and custManagerName like ?";
				params.add("%"+ct.getCustManagerName()+"%");
			}
		}
		hql +=" and 	custStatus!=2";
		List<CstCustomer> list = cd.list(hql, params);
		List<CstCustomer> list2 = cd.queryPage(cpage, count, hql, params);
		int ctCount = 0;
		if (list.size()%count==0) {
			ctCount=list.size()/count;
		}else if (list.size()%count>0) {
			ctCount=list.size()/count+1;
		}
		req.put("type",cd.list("from BasDict where dictType='地区'"));
		req.put("type2",cd.list("from BasDict where dictType='客户等级'"));
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("ctCount", ctCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("ctSum", list2.size());
		return "stList";
	}
	
	
	public String queryOne(){
		CstCustomer c = (CstCustomer) cd.get(CstCustomer.class, ct.getCustNo());
		req.put("c", c);
		if (httpreq.getParameter("a")!=null) {//跳转到联系人页面
			return "linkman";
		}else if(httpreq.getParameter("b")!=null){//跳转到交往记录页面
			return "activities";
		}else{
			//查询所有客户经理
			req.put("khjl", cd.list("from SysUser where role.roleId=?",3));
			req.put("type",cd.list("from BasDict where dictType='地区'"));
			req.put("type2",cd.list("from BasDict where dictType='客户等级'"));
			return "edit";
		}
	}
	
	//查询客户历史订单
	public String toOrders(){
		String hql = "from Orders where customer.custNo=?";
		List<Orders> list = cd.list(hql, ct.getCustNo());
		List<Orders> list2 = cd.queryPage(cpage, count, hql, ct.getCustNo());
		int odCount = 0;
		if (list.size()%count==0) {
			odCount=list.size()/count;
		}else if (list.size()%count>0) {
			odCount=list.size()/count+1;
		}
		CstCustomer c = (CstCustomer) cd.get(CstCustomer.class, ct.getCustNo());
		req.put("c", c);
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("odCount", odCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("odSum", list2.size());
		return "orders";
	}
	
	//修改客户信息
	public String update(){
		try {
			SysUser u = (SysUser) cd.get(SysUser.class, ct.getCustManagerId());
			ct.setCustManagerName(u.getUsrName());
			cd.update(ct);
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
		return null;
	}
	
	//添加联系人信息
	public void linkmanAdd(){
		try {
			CstCustomer cst = (CstCustomer) cd.get(CstCustomer.class, ct.getCustNo());
			ck.setCstcustomer(cst);
			cd.save(ck);
			responseInfo.res(resp, "添加成功", "cust!queryOne?ct.custNo="+ct.getCustNo()+"&a=1");
		} catch (Exception e) {
			e.printStackTrace();
			responseInfo.res(resp, "添加失败", "${pageContext.request.contextPath}/~cust/cust/linkman_add.jsp?custNo="+ct.getCustNo());
		}
	}
	
	//查看订单明细
	public String toOrdersDetail(){
		Orders o = (Orders) cd.get(Orders.class, od.getOdrId());
		//计算一个订单的总金额
		double money = 0;
		List<OrdersLine> ol = o.getOl();
		for (OrdersLine oo : ol) {
			money+=oo.getOddPrice();
		}
		req.put("money", money);
		req.put("o", cd.get(Orders.class, od.getOdrId()));
		return "ordersDetail";
	}
	
	//查询联系人信息
	public String toLinkmanEdit(){
		req.put("linkman", cd.get(CstLinkman.class, ck.getLkmId()));
		return "linkmanEdit";
	}
	
	//编辑联系人信息
	public void linkmanEdit(){
		try {
			cd.update(ck);
			responseInfo.res(resp, "编辑成功", "cust!queryOne?ct.custNo="+ck.getCstcustomer().getCustNo()+"&a=1");
		} catch (Exception e) {
			e.printStackTrace();
			responseInfo.res(resp, "编辑失败", "cust!toLinkmanEdit?ck.lkmId="+ck.getLkmId());
		}
	}
	
	//删除联系人
	public void toLinkmanDelete(){
		try {
			cd.delete(cd.get(CstLinkman.class, ck.getLkmId()));
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
	}
	//删除交往记录
	public void toActivitiesDelete(){
		try {
			cd.delete(cd.get(CstActivity.class,ca.getAtvId()));
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
	}
	
	//添加交往记录
	public void activitiesAdd(){
		try {
			CstCustomer cst = (CstCustomer) cd.get(CstCustomer.class, ct.getCustNo());
			ca.setCustomer(cst);
			cd.save(ca);
			responseInfo.res(resp, "添加成功", "cust!queryOne?ct.custNo="+ct.getCustNo()+"&b=1");
		} catch (Exception e) {
			e.printStackTrace();
			responseInfo.res(resp, "添加失败", "${pageContext.request.contextPath}/~cust/cust/activities_add.jsp?custNo="+ct.getCustNo());
		}
	}
	
	//查询交往记录信息
	public String toActivitiesEdit(){
		req.put("activity", cd.get(CstActivity.class, ca.getAtvId()));
		return "activitiesEdit";
	}
	
	//编辑交往记录信息
	public void activitiesEdit(){
		try {
			cd.update(ca);
			responseInfo.res(resp, "编辑成功", "cust!queryOne?ct.custNo="+ca.getCustomer().getCustNo()+"&b=1");
		} catch (Exception e) {
			e.printStackTrace();
			responseInfo.res(resp, "编辑失败", "cust!toActivitiesEdit?ca.atvId="+ca.getAtvId());
		}
	}
	
	//删除客户信息
	public void updateStatus(){
		try {
			CstCustomer cst = (CstCustomer) cd.get(CstCustomer.class, ct.getCustNo());
			cst.setCustStatus(3);
			cd.update(cst);
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
		
	}
	
	
	public Orders getOd() {
		return od;
	}

	public void setOd(Orders od) {
		this.od = od;
	}

	public CstActivity getCa() {
		return ca;
	}

	public void setCa(CstActivity ca) {
		this.ca = ca;
	}

	public int getCpage() {
		return cpage;
	}
	public void setCpage(int cpage) {
		this.cpage = cpage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public CstCustomer getCt() {
		return ct;
	}
	public void setCt(CstCustomer ct) {
		this.ct = ct;
	}
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	public String getTj() {
		return tj;
	}
	public void setTj(String tj) {
		this.tj = tj;
	}
	public CstLinkman getCk() {
		return ck;
	}
	public void setCk(CstLinkman ck) {
		this.ck = ck;
	}
}
