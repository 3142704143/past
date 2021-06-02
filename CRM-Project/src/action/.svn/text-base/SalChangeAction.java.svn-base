package action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import util.AjaxReturnData;
import util.responseInfo;

import dao.CommonDao;
import entity.CstCustomer;
import entity.SalChance;
import entity.SalPlan;
import entity.SysRight;
import entity.SysUser;

public class SalChangeAction extends BaseAction {
	private CommonDao cd;
	private SalChance sc;
	private int cpage=1;
	private int count=10;
	
	//根据条件查询营销机会
	public String scList(){
		String hql = "from SalChance where 1=1";
		List<Object> params = new ArrayList<Object>();
		if (sc!=null) {
			if (sc.getChcCustName()!=null && !"".equals(sc.getChcCustName())) {
				hql +=" and chcCustName like ?";
				params.add("%"+sc.getChcCustName()+"%");
			}
			if (sc.getChcTitle()!=null && !"".equals(sc.getChcTitle())) {
				hql +=" and chcTitle like ?";
				params.add("%"+sc.getChcTitle()+"%");
			}
			if (sc.getChcLinkman()!=null && !"".equals(sc.getChcLinkman())) {
				hql +=" and chcLinkman = ?";
				params.add(sc.getChcLinkman());
			}
		}
		if (httpreq.getParameter("a")!=null) {
			hql +=" and 	chcStatus!=1";
		}else{
			hql +=" and 	chcStatus=1";
		}
		List<SalChance> list = cd.list(hql, params);
		List<SalChance> list2 = cd.queryPage(cpage, count, hql, params);
		int scCount = 0;
		if (list.size()%count==0) {
			scCount=list.size()/count;
		}else if (list.size()%count>0) {
			scCount=list.size()/count+1;
		}
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("scCount", scCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("scSum", list2.size());
		if (httpreq.getParameter("a")!=null) {
			return "spList";
		}
		return "scList";
	}
	
	//添加销售机会
	public String add(){
		sc.setChcCreateDate(new Timestamp(System.currentTimeMillis()));
		//如果指派了客户经理
		if (sc.getChcDueId()!=null && !"".equals(sc.getChcDueId())) {
			SysUser u = (SysUser) cd.get(SysUser.class, sc.getChcDueId());
			//设置被指派的客户经理的姓名和指派时间
			sc.setChcDueTo(u.getUsrName());
			sc.setChcDueDate(new Timestamp(System.currentTimeMillis()));
			sc.setChcStatus(2);
		}else{
			sc.setChcStatus(1);
		}
		cd.save(sc);
		return SUCCESS;
	}
	
	//删除销售机会
	public String delete(){
		cd.delete(cd.get(SalChance.class, sc.getChcId()));
		return null;
	}
	
	//根据chcId查询销售机会
	public String queryOne(){
		if (httpreq.getParameter("b")!=null) {//跳转到添加页面
			//查询所有客户经理
			req.put("khjl", cd.list("from SysUser where role.roleId=?",3));
			return "add";
		}else{
			//查询chcid查询资料
			sc = (SalChance) cd.get(SalChance.class, sc.getChcId());
			//查询所有客户经理
			req.put("khjl", cd.list("from SysUser where role.roleId=?",3));
			if(httpreq.getParameter("a")!=null){//跳转到指派界面
				return "dispatch";
			}else{//跳转到编辑页面
				return "edit";
			}
		}
	}
	
	//编辑机会资料
	public String update(){
		try {
			cd.update(sc);
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
		return null;
	}
	
	//指派销售机会
	public void updateDue(){
		try {
			SalChance sal = (SalChance) cd.get(SalChance.class,sc.getChcId());
			SysUser u = (SysUser) cd.get(SysUser.class, sc.getChcDueId());
			//设置被指派的客户经理的姓名和指派时间
			sal.setChcDueId(u.getUsrId());
			sal.setChcDueTo(u.getUsrName());
			sal.setChcDueDate(new Timestamp(System.currentTimeMillis()));
			sal.setChcStatus(2);
			cd.update(sal);
			//添加一个新的开发计划
			cd.save(new SalPlan(new Timestamp(System.currentTimeMillis()), "新添加", sal));
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
	}
	
	//根据id查询开发记录
	public String querySal(){
		req.put("s", cd.get(SalChance.class,sc.getChcId()));
		if (httpreq.getParameter("a")!=null) {//跳转到执行计划
			return "devExecute";
		}else if(httpreq.getParameter("b")!=null){//跳转到查看计划
			return "devDetail";
		}else{//跳转到制定计划
			return "devPlan";
		}
	}
	
	//修改状态
	public void updateStatus(){
		SalChance sal = (SalChance) cd.get(SalChance.class, sc.getChcId());
		sal.setChcStatus(sc.getChcStatus());
		cd.update(sal);
		if (httpreq.getParameter("a")!=null) {//如果是开发成功
			//添加一条客户记录
			CstCustomer c = new CstCustomer();
			SimpleDateFormat spf = new SimpleDateFormat("yyyyMMddHHmmss");
			String date = spf.format(new Date());
			c.setCustNo("KH"+date);
			c.setCustName(sal.getChcCustName());
			c.setCustManagerId(sal.getChcDueId());
			c.setCustManagerName(sal.getChcDueTo());
			c.setCustStatus(1);
			cd.save(c);
		}
		responseInfo.res(resp, "sc!scList?a=1");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public SalChance getSc() {
		return sc;
	}
	public void setSc(SalChance sc) {
		this.sc = sc;
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
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	
}
