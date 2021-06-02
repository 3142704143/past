package action;

import util.AjaxReturnData;
import dao.CommonDao;
import entity.SalChance;
import entity.SalPlan;

public class SalPlanAction extends BaseAction {
	private CommonDao cd;
	private SalPlan sp;
	private Integer chcId;
	private int cpage=1;
	private int count=5;
	
	
	public void add(){
		try {
			SalChance s = (SalChance) cd.get(SalChance.class,chcId);
			sp.setSalchance(s);
			cd.save(sp);
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
	}
	
	public void update(){
		try {
			SalPlan sap = (SalPlan) cd.get(SalPlan.class, sp.getPlaId());
			if (httpreq.getParameter("a")!=null) {
				sap.setPlaResult(sp.getPlaResult());
			}else{
				sap.setPlaTodo(sp.getPlaTodo());
			}
			cd.update(sap);
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
	}
	
	public void delete(){
		try {
			SalPlan sap = (SalPlan) cd.get(SalPlan.class, sp.getPlaId());
			cd.delete(sap);
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
	}
	
	
	
	
	
	
	
	
	
	public Integer getChcId() {
		return chcId;
	}

	public void setChcId(Integer chcId) {
		this.chcId = chcId;
	}

	public SalPlan getSp() {
		return sp;
	}
	public void setSp(SalPlan sp) {
		this.sp = sp;
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
