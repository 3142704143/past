package action;

import java.util.ArrayList;
import java.util.List;

import dao.CommonDao;
import entity.BasDict;
import entity.SysRole;

public class DictAction extends BaseAction {
	private CommonDao cd = new CommonDao();
	private BasDict bd;
	private int cpage=1;
	private int count=5;
	
	
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
	public BasDict getBd() {
		return bd;
	}
	public void setBd(BasDict bd) {
		this.bd = bd;
	}
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	public String dictList(){
		String hql = "from BasDict where 1=1";
		List<Object> params = new ArrayList<Object>();
		if(bd!=null){
			if(bd.getDictType()!=null && !"".equals(bd.getDictType())){
				hql+=" and dict_type like ?";
				params.add("%"+bd.getDictType()+"%");
			}
			if(bd.getDictItem()!=null && !"".equals(bd.getDictItem())){
				hql+=" and dict_item like ?";
				params.add("%"+bd.getDictItem()+"%");
			}
			if(bd.getDictValue()!=null && !"".equals(bd.getDictValue())){
				hql+=" and dict_value = ?";
				params.add(bd.getDictValue());
			}
		}
		List<BasDict> list = cd.list(hql, params);
		List<BasDict> list2 = cd.queryPage(cpage, count, hql, params);
		int dictCount = 0;
		if (list.size()%count==0) {
			dictCount=list.size()/count;
		}else if (list.size()%count>0) {
			dictCount=list.size()/count+1;
		}
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("dictCount", dictCount);
		req.put("allSum", list.size());
		req.put("list", list2);
		req.put("dictSum", list2.size());
		return SUCCESS;
	}
	public String del(){
		cd.delete(bd);
		return "dictList";
	}
	
	public String toUpdate(){
		req.put("bd",cd.get(BasDict.class, bd.getDictId()));
		return "toUpdate";
	}
	
	public String Update(){
		cd.update(bd);
		return "dictList";
	}
	
	public String Insert(){
		cd.save(bd);
		return "dictList";
	}
}
