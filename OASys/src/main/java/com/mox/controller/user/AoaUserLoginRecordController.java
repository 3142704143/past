package com.mox.controller.user;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mox.entity.user.AoaUserLoginRecord;
import com.mox.service.user.AoaUserLoginRecordService;

@Controller
@RequestMapping("AoaUserLoginRecord")
public class AoaUserLoginRecordController {

	@Autowired
	private AoaUserLoginRecordService aulrs;
	
	//按用户名模糊查询
	@RequestMapping("Search/{count}")
	public String Search(HttpServletRequest req,@PathVariable("count")Integer count) {
		String name = req.getParameter("name");
		PageHelper.startPage(count, 12);
		Page<AoaUserLoginRecord> list = (Page<AoaUserLoginRecord>) aulrs.queryBySearch(name);
		PageInfo<AoaUserLoginRecord> pi = new PageInfo<AoaUserLoginRecord>(list);
		req.setAttribute("count", count);
		req.setAttribute("list", pi);
		req.setAttribute("name", name);
		return "/userlogrecordmanage.jsp";
	}
}
