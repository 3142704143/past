package action;

import java.util.ArrayList;
import java.util.List;

import util.responseInfo;

import dao.CommonDao;
import entity.CstLost;
import entity.SysRight;

public class CstLostAction extends BaseAction {
	private CommonDao cd;
	private CstLost cl;
	private int cpage=1;
	private int count=10;
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
	public CstLost getCl() {
		return cl;
	}
	public void setCl(CstLost cl) {
		this.cl = cl;
	}
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}

	public String cstList(){
		String hql="from CstLost where 1=1";
		List<Object> params = new ArrayList<Object>();
		if(cl!=null){
			if(cl.getLstCustName()!=null && !"".equals(cl.getLstCustName())){
				hql+=" and lstCustName like ?";
				params.add("%"+cl.getLstCustName()+"%");
			}
			if(cl.getLstCustManagerName()!=null && !"".equals(cl.getLstCustManagerName())){
				hql+=" and lstCustManagerName like ?";
				params.add("%"+cl.getLstCustManagerName()+"%");
			}
			if (cl.getLstStatus()!=null && !"".equals(cl.getLstStatus())) {
				hql+=" and lstStatus=?";
				params.add(cl.getLstStatus());
			}
		}
		List<CstLost> list = cd.list(hql, params);
		List<CstLost> list2 = cd.queryPage(cpage, count, hql, params);
		int cstCount = 0;
		if (list.size()%count==0) {
			cstCount=list.size()/count;
		}else if (list.size()%count>0) {
			cstCount=list.size()/count+1;
		}
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("cstCount", cstCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("cstSum", list2.size());
		if (httpreq.getParameter("a")!=null) {
			return "list";
		}else{
			return SUCCESS;
		}
	}
	
	
	public String queryCst(){
		CstLost cst = (CstLost) cd.get(CstLost.class, cl.getLstId());
		req.put("c", cst);
		if (httpreq.getParameter("a")!=null) {//是暂缓流失
			return "relay";
		}else{//是确认流失
			return "confirm";
		}
	}

	public void update(){
		CstLost cst = (CstLost) cd.get(CstLost.class, cl.getLstId());
		if (httpreq.getParameter("a")!=null) {//是暂缓流失
			cst.setLstDelay(cl.getLstDelay());
			cst.setLstStatus(2);
		}else{//是确认流失
			cst.setLstReason(cl.getLstReason());
			cst.setLstStatus(3);
		}
		cd.update(cst);
		responseInfo.res(resp, "cst!cstList?a=1");
	}
}
