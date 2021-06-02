package com.mox.controller.user;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mox.entity.user.AoaPosition;
import com.mox.service.user.AoaDeptService;
import com.mox.service.user.AoaPositionService;

@Controller
@RequestMapping("AoaPosition")
public class AoaPositionController {

	@Autowired
	private AoaPositionService aps;
	@Autowired
	private AoaDeptService ads;
	
	//进入时加载所有数据
	@RequestMapping("SelectAll")
	public String SelectAll(HttpServletRequest req) {
		req.setAttribute("list", aps.selectAll());
		return "/positionmanage.jsp";
	}
	//点击修改
	@RequestMapping("toUpdate")
	public String toUpdate(HttpServletRequest req) {
		String id = req.getParameter("id");
		AoaPosition aoaPosition = aps.selectByPrimaryKey(id);
		req.setAttribute("list", ads.selectAll());
		req.setAttribute("aoaPosition", aoaPosition);
		return "/positionedit.jsp";
	}
	//修改
	@RequestMapping("Update")
	public String Update(AoaPosition ap) {
		aps.updateByPrimaryKeySelective(ap);
		return "redirect:SelectAll";
	}
	
	//点击添加时加载下拉框的数据
	@RequestMapping("toAdd")
	public String toAdd(HttpServletRequest req) {
		req.setAttribute("list", ads.selectAll());
		return "/positionadd.jsp";
	}
	
	//添加
	@RequestMapping("Add")
	public String Add(AoaPosition ap) {
		aps.insert(ap);
		return "redirect:SelectAll";
	}
	
}
