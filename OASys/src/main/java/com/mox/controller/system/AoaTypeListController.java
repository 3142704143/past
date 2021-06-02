package com.mox.controller.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mox.entity.system.AoaTypeList;
import com.mox.service.system.AoaTypeListService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Controller
@RequestMapping("AoaTypeList")
public class AoaTypeListController {
	@Autowired
	private AoaTypeListService ats;
	@Autowired
	private HttpServletRequest req;
	
	//进入时加载类型管理所有数据
	@RequestMapping("SelectAll")
	public String SelectAll() {
		List<AoaTypeList> list = ats.selectAll();
		req.setAttribute("list", list);
		return "/typemanager.jsp";
	}
	
	//类型菜单管理查看
	@RequestMapping("SelectOne")
	public String SelectOne() {
		String id = req.getParameter("id");
		req.setAttribute("atl",  ats.selectByPrimaryKey(id));
		return "/typeinfo.jsp";
	}
	//类型菜单管理点击修改时
	@RequestMapping("toUpdate")
	public String toUpdate() {
		String id = req.getParameter("id");
		req.setAttribute("atl",  ats.selectByPrimaryKey(id));
		return "/typeedit.jsp";
	}
	//类型菜单管理修改
	@RequestMapping("Update")
	public String Update(AoaTypeList atl) {
		ats.updateByPrimaryKeySelective(atl);
		return "redirect:SelectAll";
	}
	//类型菜单管理删除
	@RequestMapping("Delete")
	public String Delete() {
		String id = req.getParameter("id");
		ats.deleteByPrimaryKey(id);
		return "redirect:SelectAll";
	}
	//类型菜单管理添加
	@RequestMapping("Add")
	public String Add(AoaTypeList atl) {
		ats.insert(atl);
		return "redirect:SelectAll";
	}
	//搜索
	@RequestMapping("Search")
	public String Search() {
		String name = req.getParameter("name");
		if(name==""||name==null) {
			return "redirect:SelectAll";
		}else {
			Example e = new Example(AoaTypeList.class);
			Criteria c = e.createCriteria();
			c.andLike("typeModel", "%"+name+"%");
			
			List<AoaTypeList> list = ats.selectByExample(e);
			req.setAttribute("list", list);
			return "/typemanager.jsp";
		}
	}
}
