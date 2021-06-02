package com.mox.controller.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mox.entity.system.AoaStatusList;
import com.mox.service.system.AoaStatusListService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Controller
@RequestMapping("AoaStatusList")
public class AoaStatusListController {
	@Autowired
	private AoaStatusListService asls;
	
	//进入时加载状态管理所有数据
		@RequestMapping("SelectAll")
		public String SelectAll(HttpServletRequest req) {
			 List<AoaStatusList> list = asls.selectAll();
			req.setAttribute("list", list);
			return "/statusmanage.jsp";
		}	

		//状态管理查看
		@RequestMapping("SelectOne")
		public String SelectOne(HttpServletRequest req) {
			String id = req.getParameter("id");
			req.setAttribute("asl",  asls.selectByPrimaryKey(id));
			return "/statusinfo.jsp";
		}
		//状态管理点击修改时
		@RequestMapping("toUpdate")
		public String toUpdate(HttpServletRequest req) {
			String id = req.getParameter("id");
			req.setAttribute("asl",  asls.selectByPrimaryKey(id));
			return "/statusedit.jsp";
		}
		//状态管理修改
		@RequestMapping("Update")
		public String Update(AoaStatusList asl) {
			asls.updateByPrimaryKeySelective(asl);
			return "redirect:SelectAll";
		}
		//状态管理删除
		@RequestMapping("Delete")
		public String Delete(HttpServletRequest req) {
			String id = req.getParameter("id");
			asls.deleteByPrimaryKey(id);
			return "redirect:SelectAll";
		}
		//状态管理添加
		@RequestMapping("Add")
		public String Add(AoaStatusList asl) {
			asls.insert(asl);
			return "redirect:SelectAll";
		}
	
		//搜索
		@RequestMapping("Search")
		public String Search(HttpServletRequest req) {
			String name = req.getParameter("name");
			if(name==""||name==null) {
				return "redirect:SelectAll";
			}else {
			Example e = new Example(AoaStatusList.class);
			Criteria c = e.createCriteria();
			c.andLike("statusModel", "%"+name+"%");
			
			List<AoaStatusList> list = asls.selectByExample(e);
			req.setAttribute("list", list);
			return "/statusmanage.jsp";
			}
		}
	
}
