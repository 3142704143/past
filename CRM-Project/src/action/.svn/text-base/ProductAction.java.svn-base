package action;

import java.util.ArrayList;
import java.util.List;

import dao.CommonDao;
import entity.Product;
import entity.SysRole;

public class ProductAction extends BaseAction {
	private CommonDao cd;
	private Product pd;
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
	public Product getPd() {
		return pd;
	}
	public void setPd(Product pd) {
		this.pd = pd;
	}
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	public String proList(){
		String hql="from Product where 1=1";
		List<Object> params = new ArrayList<Object>();
		if(pd!=null){
			if(pd.getProdName()!=null && !"".equals(pd.getProdName())){
				hql+=" and prod_name like ?";
				params.add("%"+pd.getProdName()+"%");
			}
			if(pd.getProdType()!=null && !"".equals(pd.getProdType())){
				hql+=" and prod_type like ?";
				params.add(pd.getProdType());
			}
			if(pd.getProdBatch()!=null && !"".equals(pd.getProdBatch())){
				hql+=" and prod_batch = ?";
				params.add(pd.getProdBatch());
			}
		}
		List<Product> list = cd.list(hql, params);
		List<Product> list2 = cd.queryPage(cpage, count, hql, params);
		int proCount = 0;
		if (list.size()%count==0) {
			proCount=list.size()/count;
		}else if (list.size()%count>0) {
			proCount=list.size()/count+1;
		}
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("proCount", proCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("proSum", list2.size());
		return SUCCESS;
	}
}
