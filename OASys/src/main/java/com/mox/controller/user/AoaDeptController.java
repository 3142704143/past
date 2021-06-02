package com.mox.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mox.entity.user.AoaDept;
import com.mox.entity.user.AoaPosition;
import com.mox.entity.user.AoaUser;
import com.mox.service.user.AoaDeptService;
import com.mox.service.user.AoaPositionService;
import com.mox.service.user.AoaUserService;

@Controller
@RequestMapping("AoaDept")
public class AoaDeptController {
	
	@Autowired
	private AoaDeptService ads;
	@Autowired
	private AoaUserService aus;
	@Autowired
	private AoaPositionService aps;
	
	
			//点击部门管理时加载数据
			@RequestMapping("SelectAll")
			public String SelectAll(HttpServletRequest req) {
				List<AoaDept> list = ads.selectAll();
				req.setAttribute("list", list);
				return "/deptmanage.jsp";
			}
			
			//点击修改时
			@RequestMapping("toUpdate")
			public String toUpdate(HttpServletRequest req) {
				String id = req.getParameter("id");
				req.setAttribute("ad",  ads.selectByPrimaryKey(id));
				return "/deptedit.jsp";
			}
			//修改
			@RequestMapping("Update")
			public String Update(AoaDept ad) {
				ads.updateByPrimaryKeySelective(ad);
				return "redirect:SelectAll";
			}
			//删除
			@RequestMapping("Delete")
			public String Delete(HttpServletRequest req) {
				String id = req.getParameter("id");
				ads.deleteByPrimaryKey(id);
				return "redirect:SelectAll";
			}
			//添加
			@RequestMapping("Add")
			public String Add(AoaDept ad) {
				ads.insert(ad);
				return "redirect:SelectAll";
			}
			
			//点击人事调动
			@RequestMapping("toPersonnolTransfer")
			public String toPersonnolTransfer(HttpServletRequest req) {
				String id = req.getParameter("id");
				List<AoaUser> list = aus.queryBydeptId(Integer.parseInt(id));
				AoaUser aoaUser = aus.queryBydeptId1(Integer.parseInt(id));
				req.setAttribute("apsList", aps.selectAll());
				req.setAttribute("adsList", ads.selectAll());
				req.setAttribute("list", list);
				req.setAttribute("aoaUser", aoaUser);
				return "/deptread.jsp";
			}
			//点击确定
			@RequestMapping("PersonnolTransfer")
			public String PersonnolTransfer(AoaUser au) {
				aus.updateByPrimaryKeySelective(au);
				return "redirect:SelectAll";
			}
			
//			//更换
//			@RequestMapping("PersonnolTransfer2")
//			public String PersonnolTransfer2(HttpServletRequest req) {
//				//用户userId
//				String id = req.getParameter("newmanageid");
//				//用户deptId
//				String aaa = req.getParameter("aaa");
//				//通过部门ID查询position表的positionId
//				AoaPosition aoaPosition = aps.selectByPrimaryKey(aaa);
//				AoaUser user = new AoaUser();
//				user.setUserId(Long.parseLong(id));
//				//将positoinId(当前部门部长)赋值给新任部门部长
//				user.setPositionId(aoaPosition.getPositionId());
//				//部门经理调动
//				aus.updateByPrimaryKeySelective(user);
//				
//				String deptid = req.getParameter("deptId1");
//				String positionid = req.getParameter("bbb");
//				String userid = req.getParameter("userId1");
//				System.out.println(deptid+"---"+positionid+"---"+userid);
//				AoaUser au=new AoaUser();
//				au.setUserId(Long.parseLong(userid));
//				au.setDeptId(Long.parseLong(deptid));
//				au.setPositionId(Long.parseLong(positionid));
//				//人事调动
//				aus.updateByPrimaryKeySelective(au);
//				return "redirect:SelectAll";
//			}
}
