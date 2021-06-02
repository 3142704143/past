package action;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Hibernate;

import util.AjaxReturnData;
import util.responseInfo;

import dao.CommonDao;
import entity.SysRole;
import entity.SysUser;

public class UserAction extends BaseAction {
	private CommonDao cd;
	private SysUser user;
	private int cpage=1;
	private int count=5;
	
	//登录
	public String login(){
		//获得账号密码
		List<SysUser> list = cd.list("from SysUser where usrName =? and usrPassword=?", user.getUsrName(),user.getUsrPassword());
		if (list !=null && list.size()>0) {
			SysUser u = list.get(0);
			if (u.getUsrFlag()==0) {
				return responseInfo.res(resp, "用户被禁用！", "login.jsp"); 
			}
			if (u.getRole()==null) {
				return responseInfo.res(resp, "用户未指派角色！", "login.jsp"); 
			}
			if (u.getRole().getRoleFlag()==0) {
				return responseInfo.res(resp, "用户角色被禁用！", "login.jsp");
			}
			session.put("loginUser", u);
			//手动初始化用户关联的角色对象
			Hibernate.initialize(u.getRole());
			Hibernate.initialize(u.getRole().getRights());
			return "index";
		}else{
			return responseInfo.res(resp, "账号或密码错误！", "login.jsp");
		}
	}
	
	//退出
	public String outLogin(){
		session.remove("loginUser");
		return "login";
	}
	
	//根据用户名和状态查询用户
	public String userList(){
		String hql = "from SysUser where 1=1";
		List<Object> params = new ArrayList<Object>();
		if (user!=null) {
			if (user.getUsrName()!=null) {
				hql +=" and usr_name like ?";
				params.add("%"+user.getUsrName()+"%");
			}
			if (user.getUsrFlag()!=null) {
				req.put("Flag", user.getUsrFlag());
				hql +=" and usr_flag = ?";
				params.add(user.getUsrFlag());
			}
		}
		List<SysUser> list = cd.list(hql, params);
		List<SysUser> list2 = cd.queryPage(cpage, count, hql, params);
		int userCount = 0;
		if (list.size()%count==0) {
			userCount=list.size()/count;
		}else if (list.size()%count>0) {
			userCount=list.size()/count+1;
		}
		req.put("cpage", cpage);
		req.put("count", count);
		req.put("userCount", userCount);
		req.put("list", list2);
		req.put("allSum", list.size());
		req.put("userSum", list2.size());
		return "userlist";
	}
	
	
	//根据用户id查询用户资料
	public String queryUser(){
		SysUser u = (SysUser) cd.get(SysUser.class, user.getUsrId());
		req.put("u", u);
		//跳转到查询页面
		if (httpreq.getParameter("a")!=null) {
			return "userdetail";
		}else if(httpreq.getParameter("b")!=null){//如果是跳转到指派页面(dispatch.jsp)
			user = u;
			List<SysRole> list = cd.list(SysRole.class);
			req.put("list", list);
			return "userDispatch";
		}else{
			return "useredit";
		}
	}
	
	//编辑用户资料
	public String toUpdateUser(){
		try {
			if (user.getRole()!=null) {
				if (user.getRole().getRoleId()==null || "".equals(user.getRole().getRoleId())) {
					user.setRole(null);
				}
			}
			cd.update(user);
		} catch (Exception e) {
			e.printStackTrace();
			AjaxReturnData.retrundata(resp, "No");
		}
		return null;
	}
	
	//添加用户
	public String add(){
		try {
			List<SysUser> list = cd.list("from SysUser where usr_name = ?", user.getUsrName());
			if (list!=null && list.size()>0) {//该用户名存在
				AjaxReturnData.retrundata(resp, "Yes");
			}else{
				cd.save(user);
			}
		} catch (Exception e) {
			AjaxReturnData.retrundata(resp, "addNo");
		}
		return null;
	}
	
	//删除用户
	public String delete(){
		SysUser u = (SysUser) cd.get(SysUser.class,user.getUsrId());
		u.setUsrFlag(0);
		cd.update(u);
		return null;
	}
	
	
	
	
	
	
	public void setCd(CommonDao cd) {
		this.cd = cd;
	}
	public SysUser getUser() {
		return user;
	}
	public void setUser(SysUser user) {
		this.user = user;
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

}












