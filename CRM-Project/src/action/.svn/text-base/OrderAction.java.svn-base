package action;

import java.util.ArrayList;
import java.util.List;

import dao.CommonDao;
import entity.Orders;

public class OrderAction extends BaseAction {
	private CommonDao cd;
	private String dates;
	private String names;
	
	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}

	public String getNames() {
		return names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	
	public String queryAll(){
		String sql="select o.odr_Customer,sum(l.odd_Price) from Orders o inner join Orders_line l where 1=1";
		List<Object> params = new ArrayList<Object>();
		if(names!=null && !"".equals(names)){
			sql+=" and o.odr_Customer like ?";
			params.add("%"+names+"%");
		}
		if(dates!=null && !"".equals(dates)){
			sql+=" and o.odr_Date like ?";
			params.add("%"+dates+"%");
			req.put("dates", dates);
		}
		sql += " group by o.odr_Customer ";
		List list = cd.listSQL(sql, params);
		req.put("list", list);
		req.put("names",names);
		return SUCCESS;
	}
}
