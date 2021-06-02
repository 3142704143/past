package lost;

import dao.CommonDao;


public class CustLostJob {
	
	private CommonDao cd;
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	
	public void lostJob(){
		System.out.println("开始扫描客户流失数据....");
		//1.查询所有有效的客户
		//2.查询这些客户最后一笔订单距离现在是否超过6个月
		//3.如果超过6个月,再看这些超过6个月没下单的客户在流失表中是否存在
		//4.如果在流失表中不存在,则将此客户添加到流失表中
	}
	
}
