package action;

import java.util.ArrayList;
import java.util.List;

import dao.CommonDao;
import entity.BasDict;
import entity.Product;
import entity.Storage;

public class StorageAction extends BaseAction {
	private CommonDao cd;
	private Storage str;
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
	public Storage getStr() {
		return str;
	}
	public void setStr(Storage str) {
		this.str = str;
	}
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	public String stoList(){
		String hql = "from Storage where 1=1";
		List<Object> params = new ArrayList<Object>();
		if(str!=null){
			if(str.getStkp().getProdName()!=null && !"".equals(str.getStkp().getProdName())){
				hql+=" and stkp.prodName like ?";
				params.add("%"+str.getStkp().getProdName()+"%");
			}
			if(str.getStkWarehouse()!=null && !"".equals(str.getStkWarehouse())){
				hql+=" and stkWarehouse like ?";
				params.add("%"+str.getStkWarehouse()+"%");
			}
		}
		List<Storage> list = cd.list(hql, params);
		List<Storage> list2 = cd.queryPage(cpage, count, hql, params);
		int stoCount = 0;
		if (list.size()%count==0) {
			stoCount=list.size()/count;
		}else if (list.size()%count>0) {
			stoCount=list.size()/count+1;
		}
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("stoCount", stoCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("stoSum", list2.size());
		return SUCCESS;
	}
}
