package com.mox.controller.system;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mox.entity.role.AoaRole;
import com.mox.entity.system.AoaSysMenu;
import com.mox.entity.system.AoaTypeList;
import com.mox.service.system.AoaSysMenuService;
import com.mox.util.util;

import tk.mybatis.mapper.entity.Example;

@Controller
@RequestMapping("AoaSysMenu")
//系统管理controller
public class AoaSysMenuController {
	util ut = new util();
	@Autowired
	private AoaSysMenuService asm;
	@Autowired
	private HttpServletRequest req;
	
	//进入时加载菜单类型管理所有数据/点击搜索
	@RequestMapping("SelectAll")
	public String SelectAll() {
		String name = req.getParameter("name");
		Example e = new Example(AoaSysMenu.class);
		e.createCriteria().andLike("menuName", "%"+name+"%");
		List<AoaSysMenu> list = asm.selectByExample(e);
		req.setAttribute("list", list);
		req.setAttribute("name", name);
		return "/menumanage.jsp";
	}
	
	//去添加页面
	@RequestMapping("insert")
	public String insert() {
		//查询所有父级菜单
		Example e = new Example(AoaSysMenu.class);
		e.createCriteria().andEqualTo("parentId", 0);
		List<AoaSysMenu> list = asm.selectByExample(e);
		String menuId = req.getParameter("menuId");
		if(menuId!=null) {
			req.setAttribute("menuId", menuId);
		}
		req.setAttribute("list", list);
		return "/menuadd.jsp";
	}
	
	//添加
	@RequestMapping("toInsert")
	public String toInsert(AoaSysMenu m) {
		asm.insertSelective(m);
		return "redirect:SelectAll?name=";
	}
	
	@RequestMapping("update/{menuId}")
	public String update(@PathVariable("menuId")Integer menuId) {
		//查询所有父级菜单
		Example e = new Example(AoaSysMenu.class);
		e.createCriteria().andEqualTo("parentId", 0);
		List<AoaSysMenu> list = asm.selectByExample(e);
		req.setAttribute("menu", asm.selectByPrimaryKey(menuId));
		req.setAttribute("parentMenu", list);
		return "/menuedit.jsp";
	}
	
	@RequestMapping("toUpdate")
	public String toUpdate(AoaSysMenu m) {
		if (m.getIsShow()==null) {
			m.setIsShow(0);
		}
		System.out.println(m);
		asm.updateByPrimaryKeySelective(m);
		return "redirect:SelectAll?name=";
	}
	
	//查询是否有子节点
	@RequestMapping("querySon/{menuId}")
	public void querySon(@PathVariable("menuId")Integer menuId,HttpServletResponse resp) {
		Example e = new Example(AoaSysMenu.class);
		e.createCriteria().andEqualTo("parentId", menuId);
		List<AoaSysMenu> list = asm.selectByExample(e);
		//如果有子节点
		if (list.size()>0&&list!=null) {
			ut.retrundata(resp, "yes");
		}
	}
	
	//类型菜单管理删除
	@RequestMapping("delete")
	public String delete() {
		int menuId = Integer.parseInt(req.getParameter("menuId"));
		asm.deleteByPrimaryKey(menuId);
		return "redirect:SelectAll?name=";
	}
}
