package action;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import util.AjaxReturnData;
import util.responseInfo;
import dao.CommonDao;
import entity.BasDict;
import entity.CstCustomer;
import entity.CstService;
import entity.SysUser;

public class CstServiceAction extends BaseAction {
	private CommonDao cd;
	private String dates;
	private Date time1;
	private Date time2;
	private CstService cs;
	private int cpage=1;
	private int count=5;
	public String queryAll(){
		String sql="select svr_type,COUNT(svr_Id) from Cst_Service";
		List<Object> params = new ArrayList<Object>();
		if(dates!=null && !"".equals(dates)){
			sql+="  where svr_create_date like ?";
			params.add("%"+dates+"%");
			req.put("dates", dates);
		}
		sql+=" group by svr_Type";
		System.out.println(sql);
		List list = cd.listSQL(sql,params);
		req.put("list", list);
		return SUCCESS;
	}
	
	//查询所有服务类型
	public String queryUser(){
		req.put("type",cd.list("from BasDict where dictType='服务类型'"));
		return "add";
	}
	
	//创建服务
	public String add(){
		try {
			List<CstCustomer> list = cd.list("from CstCustomer where custName=?",cs.getSvrCustName());
			if (list!=null&&list.size()>0) {
				CstCustomer c = list.get(0);
				cs.setSvrCustNo(c.getCustNo());
			}
			cs.setSvrCreateDate(new Timestamp(System.currentTimeMillis()));
			cd.save(cs);
		} catch (Exception e) {
			AjaxReturnData.retrundata(resp, "No");
		}
		return null;
	}
	
	//根据条件查询新建服务
	public String csList(){
		String hql = "from CstService where 1=1";
		List<Object> params = new ArrayList<Object>();
		SysUser u = (SysUser) session.get("loginUser");
		if(httpreq.getParameter("a")!=null){
			hql +=" and svrStatus='新创建'";
		}else{
			if(httpreq.getParameter("b")!=null){
				hql +=" and svrStatus='已分配'";
			}else if(httpreq.getParameter("c")!=null){
				hql +=" and svrStatus='已处理'";
			}else{
				hql +=" and svrStatus='已归档'";
			}
			if(u.getRole()!=null){
				if (u.getRole().getRoleId()!=2) {//如果不是营销经理登录，则查询被分配人是登录用户的服务
					hql+=" and svrDueId=?";
					params.add(u.getUsrId());
				}
			}
		}
		
		//如果有条件
		if (cs!=null) {
			if (cs.getSvrCustName()!=null && !"".equals(cs.getSvrCustName())) {
				hql +=" and svrCustName like ?";
				params.add("%"+cs.getSvrCustName()+"%");
			}
			if (cs.getSvrTitle()!=null && !"".equals(cs.getSvrTitle())) {
				hql +=" and svrTitle like ?";
				params.add("%"+cs.getSvrTitle()+"%");
			}
			if (cs.getSvrType()!=null && !"".equals(cs.getSvrType())) {
				hql +=" and svrType = ?";
				params.add(cs.getSvrType());
				req.put("fwlx", cs.getSvrType());
			}
		}
		//如果有日期条件
		if (time1!=null&&time2!=null) {
			hql+=" and (svrCreateDate between ? and ?)";
			params.add(time1);
			params.add(time2);
		}else if(time1!=null){
			hql+=" and svrCreateDate > ?";
			params.add(time1);
		}else if(time2!=null){
			hql+=" and svrCreateDate > ?";
			params.add(time2);
		}
		
		List<CstService> list = cd.list(hql, params);
		List<CstService> list2 = cd.queryPage(cpage, count, hql, params);
		int csCount = 0;
		if (list.size()%count==0) {
			csCount=list.size()/count;
		}else if (list.size()%count>0) {
			csCount=list.size()/count+1;
		}
		req.put("type",cd.list("from BasDict where dictType='服务类型'"));//打包所有的服务类型
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("csCount", csCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("csSum", list2.size());
		if(httpreq.getParameter("a")!=null){//跳转到服务分配页面
			//查询所有客户经理
			req.put("khjl", cd.list("from SysUser where role.roleId=?",3));
			return "dispatch";
		}else if(httpreq.getParameter("b")!=null){//跳转到服务处理页面
			return "deal";
		}else if(httpreq.getParameter("c")!=null){//跳转到服务反馈页面
			return "feedback";
		}else{//跳转到服务归档页面
			return "arch";
		}
	}
	
	//删除服务
	public void delete(){
		CstService cst = (CstService) cd.get(CstService.class,cs.getSvrId());
		cd.delete(cst);
	}
	
	//分配服务的客户经理
	public void updateDueId(){
		try {
			CstService cst = (CstService) cd.get(CstService.class,cs.getSvrId());
			SysUser u = (SysUser) cd.get(SysUser.class,cs.getSvrDueId());
			cst.setSvrDueId(u.getUsrId());
			cst.setSvrDueTo(u.getUsrName());
			cst.setSvrDueDate(new Timestamp(System.currentTimeMillis()));
			cst.setSvrStatus("已分配");
			cd.update(cst);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//根据服务id查询服务信息
	public String queryCs(){
		cs = (CstService) cd.get(CstService.class, cs.getSvrId());
		if(httpreq.getParameter("c")!=null){//跳转到服务反馈页面
			return "feedback_detail";
		}else if(httpreq.getParameter("d")!=null){//跳转到服务归档页面
			return "detail";
		}else{//跳转到服务处理页面
			return "dealDetail";
		}
	}
	
	//服务处理
	public void updateDeal(){
		try {
			//查询当前服务记录
			CstService cst = (CstService) cd.get(CstService.class,cs.getSvrId());
			cst.setSvrStatus("已处理");
			cst.setSvrDeal(cs.getSvrDeal());
			cst.setSvrDealId(cs.getSvrDealId());
			cst.setSvrDealBy(cs.getSvrDealBy());
			cst.setSvrDealDate(new Timestamp(System.currentTimeMillis()));
			cd.update(cst);
			responseInfo.res(resp, "处理成功", "cs!csList?b=1");
		} catch (Exception e) {
			e.printStackTrace();
			responseInfo.res(resp, "处理失败","cs!csList?b=1");
		}
	}
	
	//服务反馈
	public void updateResult(){
		//查询当前服务记录
		CstService cst = (CstService) cd.get(CstService.class,cs.getSvrId());
		cst.setSvrResult(cs.getSvrResult());
		cst.setSvrSatisfy(cs.getSvrSatisfy());
		if (cs.getSvrSatisfy()>=3) {
			cst.setSvrStatus("已归档");
		}else{
			cst.setSvrStatus("已分配");
		}
		cd.update(cst);
	}
	
	

	
	
	public Date getTime1() {
		return time1;
	}

	public void setTime1(Date time1) {
		this.time1 = time1;
	}

	public Date getTime2() {
		return time2;
	}

	public void setTime2(Date time2) {
		this.time2 = time2;
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
	public CstService getCs() {
		return cs;
	}
	public void setCs(CstService cs) {
		this.cs = cs;
	}
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	
}
