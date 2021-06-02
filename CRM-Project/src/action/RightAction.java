package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import util.AjaxReturnData;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;

import dao.CommonDao;
import entity.SysRight;
import entity.SysRole;


public class RightAction extends BaseAction {
	private CommonDao cd;
	private SysRight right;
	private int cpage=1;
	private int count=10;
	
	//根据条件查询权限信息
	public String rightList(){
		String hql = "from SysRight where 1=1";
		List<Object> params = new ArrayList<Object>();
		if (right!=null) {
			if (right.getRightText()!=null) {
				hql +=" and rightText like ?";
				params.add("%"+right.getRightText()+"%");
			}
			if (right.getRightTip()!=null && !"".equals(right.getRightTip())) {
				hql +=" and rightTip like ?";
				params.add("%"+right.getRightTip()+"%");
			}
			if (right.getRightParentCode()!=null && !"".equals(right.getRightParentCode())) {
				req.put("parent", right.getRightParentCode());
				hql +=" and rightParentCode = ?";
				params.add(right.getRightParentCode());
			}
		}
		List<SysRight> list = cd.list(hql, params);
		List<SysRight> list2 = cd.queryPage(cpage, count, hql, params);
		int rightCount = 0;
		if (list.size()%count==0) {
			rightCount=list.size()/count;
		}else if (list.size()%count>0) {
			rightCount=list.size()/count+1;
		}
		//查询所有父级节点
		List<SysRight> flist= cd.list("from SysRight where rightParentCode=0");
		req.put("flist", flist);
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("rightCount", rightCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("rightSum", list2.size());
		return "rightList";
	}
	
	//查询所有权限类型
	public String queryType(){
		List<SysRight> flist= cd.list("from SysRight where rightParentCode=0");
		PrintWriter out = null;
		try {
			resp.setContentType("text/json;charset=UTF-8");
			out = resp.getWriter();
			String json = JSON.toJSONString(flist);
			out.print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
		return null;
	}
	
	//根据id查询权限信息
	public String queryRight(){
		right = (SysRight) cd.get(SysRight.class, right.getRightCode());
		//跳转到查询页面
		if (httpreq.getParameter("a")!=null) {
			return "rightDetail";
		}else if(httpreq.getParameter("b")!=null){//如果是跳转到指派页面(dispatch.jsp)
			List<SysRight> list = cd.list(SysRight.class);
			req.put("list", list);
			return "rightDispatch";
		}else{//跳转到编辑页面
			List<SysRight> flist= cd.list("from SysRight where rightParentCode=0");
			req.put("flist", flist);
			return "rightEdit";
		}
	}
	
	//删除权限
	public String delete(){
		cd.delete(right);
		return null;
	}
	
	//添加权限
	public String add(){
		System.out.println(right);
		cd.save(right);
		return SUCCESS;
	}
	
	//编辑权限资料
	public String toUpdateRight(){
		try {
			cd.update(right);
		} catch (Exception e) {
			AjaxReturnData.retrundata(resp, "No");
		}
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public SysRight getRight() {
		return right;
	}
	public void setRight(SysRight right) {
		this.right = right;
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
