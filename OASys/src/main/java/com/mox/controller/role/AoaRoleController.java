package com.mox.controller.role;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.page.PageMethod;
import com.mox.entity.role.AoaRole;
import com.mox.entity.role.AoaRolePowerList;
import com.mox.entity.system.AoaSysMenu;
import com.mox.service.role.AoaRolePowerListService;
import com.mox.service.role.AoaRoleService;
import com.mox.service.system.AoaSysMenuService;

import tk.mybatis.mapper.entity.Example;

@Controller
@RequestMapping("AoaRole")
public class AoaRoleController {
	
	@Autowired
	private HttpServletRequest req;
	@Autowired
	private AoaRoleService ars;
	@Autowired
	private AoaSysMenuService asms;
	@Autowired
	private AoaRolePowerListService rpsl;
	
	//根据ID查询单个
	@RequestMapping("SelectOne")
	public String SelectOne(AoaRole ar) {
		String id = req.getParameter("id");
		int count = Integer.parseInt(req.getParameter("count"));
		AoaRole aoaRole = ars.selectByPrimaryKey(id);
		req.setAttribute("role", aoaRole);
		req.setAttribute("count", count);
		return "/roleedit.jsp";
	}
	
	//根据名称模糊查询
	@RequestMapping("selectByName/{count}")
	public String selectByName(@PathVariable("count")Integer count) {
		String name = req.getParameter("name");
		PageHelper.startPage(count, 5);
		Example e = new Example(AoaRole.class);
		e.createCriteria().andLike("roleName", "%"+name+"%");
		Page<AoaRole> list = (Page<AoaRole>) ars.selectByExample(e);
		PageInfo<AoaRole> pageInfo = new PageInfo<AoaRole>(list);
		req.setAttribute("list", pageInfo);
		req.setAttribute("count", count);
		req.setAttribute("name", name);
		return "/rolemanage.jsp";
	}
	
	
	//修改
	@RequestMapping("update")
	public String update(AoaRole ar) {
		int count = Integer.parseInt(req.getParameter("count"));
		ars.updateByPrimaryKey(ar);
		return "redirect:selectByName/"+count+"?name=";
	}
	
	//删除
	@RequestMapping("delete")
	public String delete(AoaRole ar) {
		Long id = Long.parseLong(req.getParameter("id"));
		int count = Integer.parseInt(req.getParameter("count"));
		rpsl.delete(new AoaRolePowerList(id));
		ars.deleteByPrimaryKey(id);
		return "redirect:selectByName/"+count+"?name=";
	}
	
	//添加
	@RequestMapping("add")
	public String add(AoaRole ar) {
		ars.insert(ar);
		List<AoaSysMenu> list = asms.selectAll();
		for (int i = 0; i < list.size(); i++) {
			rpsl.insert(new AoaRolePowerList(0, list.get(i).getMenuId(), ar.getRoleId()));
		}
		return "redirect:selectByName/1?name=";
	}
	
	//点击设定时调用
	@RequestMapping("toSetting/{id}")
	public String toSetting(@PathVariable("id")Integer id) {
		AoaRole r = ars.selectMemu(id);
		req.setAttribute("r", r);
		return "/roleset.jsp";
	}
	
	//修改权限
	@RequestMapping("updateMenu")
	public void updateMenu(AoaRolePowerList a) {
		System.out.println(a);
		rpsl.updateByPrimaryKeySelective(a);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
