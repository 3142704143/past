package action;

import java.util.ArrayList;
import java.util.List;

import util.AjaxReturnData;
import util.responseInfo;
import dao.CommonDao;
import entity.SysRight;
import entity.SysRole;
import entity.SysUser;

public class roleAction extends BaseAction {
	private CommonDao cd;
	private SysRole role;
	private Integer[] rightCode;
	private int cpage=1;
	private int count=5;
	
	
	//根据条件查询角色
	public String roleList(){
		String hql = "from SysRole where 1=1";
		List<Object> params = new ArrayList<Object>();
		if (role!=null) {
			if (role.getRoleName()!=null) {
				hql +=" and roleName like ?";
				params.add("%"+role.getRoleName()+"%");
			}
			if (role.getRoleDesc()!=null && !"".equals(role.getRoleDesc())) {
				hql +=" and roleDesc like ?";
				params.add("%"+role.getRoleDesc()+"%");
			}
			if (role.getRoleFlag()!=null) {
				req.put("Flag", role.getRoleFlag());
				hql +=" and roleFlag = ?";
				params.add(role.getRoleFlag());
			}
		}
		List<SysRole> list = cd.list(hql, params);
		List<SysRole> list2 = cd.queryPage(cpage, count, hql, params);
		int roleCount = 0;
		if (list.size()%count==0) {
			roleCount=list.size()/count;
		}else if (list.size()%count>0) {
			roleCount=list.size()/count+1;
		}
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("roleCount", roleCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("roleSum", list2.size());
		return "rolelist";
	}
	
	//根据角色id查询角色信息
	public String queryRole(){
		role = (SysRole) cd.get(SysRole.class, role.getRoleId());
		//跳转到查询页面
		if (httpreq.getParameter("a")!=null) {
			return "roleDetail";
		}else if(httpreq.getParameter("b")!=null){//如果是跳转到指派页面(dispatch.jsp)
			List<SysRight> list = cd.list(SysRight.class);
			req.put("list", list);
			return "roleDispatch";
		}else{//跳转到编辑页面
			return "roleEdit";
		}
	}
	
	//编辑角色资料
	public String toUpdateUser(){
		try {
			cd.update(role);
		} catch (Exception e) {
			AjaxReturnData.retrundata(resp, "No");
		}
		return null;
	}
	
	//禁用角色
	public String delete(){
		SysRole r = (SysRole) cd.get(SysRole.class, role.getRoleId());
		r.setRoleFlag(0);
		cd.update(r);
		return null;
	}
	
	//添加角色
	public String add(){
		cd.save(role);
		return SUCCESS;
	}
	
	//修改角色权限
	public String updateRight(){
		role = (SysRole) cd.get(SysRole.class, role.getRoleId());
		if(rightCode==null || rightCode.length==0){
			role.setRights(null);
		}else{
			ArrayList<SysRight> list = new ArrayList<SysRight>();
			for (int i = 0; i < rightCode.length; i++) {
				SysRight r = new SysRight();
				r.setRightCode(rightCode[i]);
				list.add(r);
			}
			role.setRights(list);
		}
		cd.update(role);
		return SUCCESS;
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
	public SysRole getRole() {
		return role;
	}
	public void setRole(SysRole role) {
		this.role = role;
	}
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}

	public Integer[] getRightCode() {
		return rightCode;
	}

	public void setRightCode(Integer[] rightCode) {
		this.rightCode = rightCode;
	}
}
