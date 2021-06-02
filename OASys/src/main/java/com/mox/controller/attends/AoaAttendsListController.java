package com.mox.controller.attends;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mox.entity.attends.AoaAttendsList;
import com.mox.entity.user.AoaUser;
import com.mox.service.attends.AoaAttendsListService;

@Controller
@RequestMapping("AoaAttendsList")
public class AoaAttendsListController {
	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private AoaAttendsListService aals;
	
	//进入时加载所有数据
	@RequestMapping("SelectAll/{count}")
	public String SelectAll(@PathVariable("count")Integer count) {
		String name = req.getParameter("name");
		PageHelper.startPage(count, 10);
		Page<AoaAttendsList> list = (Page<AoaAttendsList>) aals.myselect(name);
		PageInfo<AoaAttendsList> pi = new PageInfo<AoaAttendsList>(list);
		req.setAttribute("count", count);
		req.setAttribute("list", pi);
		req.setAttribute("name", name);
		return "/attendceview.jsp";
	}
	
	
	//删除
	@RequestMapping("delete")
	public String delete() {
		String id = req.getParameter("id");
		int i = aals.deleteByPrimaryKey(id);
		return "redirect:SelectAll/1?name=";
	}
	
	
	//点击修改时查询单个
	@RequestMapping("toupdate")
	public String toupdate() {
		String id = req.getParameter("id");
		AoaAttendsList aal = aals.selectByPrimaryKey(id);
		req.setAttribute("aal", aal);
		return "/attendceedit.jsp";
	}
	
	//修改某一项或多项数据
	@RequestMapping("update")
	public String update(AoaAttendsList aal) {
		aals.updateByPrimaryKeySelective(aal);
		return "redirect:SelectAll/1?name=";
	}
	
	//查询当前用户的考勤列表
	@RequestMapping("queryById/{count}")
	public String queryById(@PathVariable("count")Integer count) {
		//获取当前用户的id
		AoaUser u = (AoaUser) req.getSession().getAttribute("u");
		PageHelper.startPage(count, 10);
		Page<AoaAttendsList> list = (Page<AoaAttendsList>) aals.selectAllMyattends(Integer.parseInt(u.getUserId().toString()));
		PageInfo<AoaAttendsList> pi = new PageInfo<AoaAttendsList>(list);
		System.out.println(pi);
		//List<AoaAttendsList> list = aals.selectAllMyattends(userid);
		req.setAttribute("list", pi);
		return "/attendcelist.jsp";
	}
	
//	//------------------------------------------------------
//	//考勤周报表
//	@RequestMapping("weektable")
//	public String SelectAll1(HttpServletRequest req) {
//		//获取本周开始时间和结束时间
//		LocalDate today = LocalDate.now();
//        LocalDate beginTime = today.with(TemporalAdjusters.previousOrSame( DayOfWeek.MONDAY));
//        LocalDate endTime = today.with(TemporalAdjusters.nextOrSame(DayOfWeek.SUNDAY ));
//        
//        Example e = new Example(AoaAttendsList.class);
//		Criteria c = e.createCriteria();
//		c.andBetween("attendsTime", beginTime, endTime);
//		List<AoaAttendsList> list = aals.selectByExample(e);
//		
//		req.setAttribute("list", list);
//		
//		return "/attendceweektable.jsp";
//	}
}





























