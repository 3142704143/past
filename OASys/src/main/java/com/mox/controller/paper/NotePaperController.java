package com.mox.controller.paper;

import java.sql.Timestamp;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.page.PageMethod;
import com.mox.entity.paper.AoaNotepaper;
import com.mox.entity.user.AoaUser;
import com.mox.service.paper.NotePaperService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Controller
@RequestMapping("notepaper")
public class NotePaperController {
	@Autowired
	private NotePaperService nps;
	
	//分页查询便签数据
	@GetMapping("queryAll/{count}")
	public String queryAll(HttpServletRequest req,@PathVariable("count")Integer count) {
		Example e = new Example(AoaNotepaper.class);
		Criteria c = e.createCriteria();
		AoaUser user = (AoaUser) req.getSession().getAttribute("u");
		c.andEqualTo("notepaperUserId",user.getUserId());
		PageMethod.startPage(count, 5);
		Page<AoaNotepaper> list = (Page<AoaNotepaper>) nps.selectByExample(e);
		PageInfo<AoaNotepaper> pi = new PageInfo<AoaNotepaper>(list);
		req.setAttribute("count", count);
		req.setAttribute("NPlist", pi);
		return "/userpanel.jsp";
	}
	
	//修改或者添加便签
	@PostMapping("insertOrupdate/{count}")
	public String insertOrupdate(AoaNotepaper a,@PathVariable("count")Integer count) {
		//如果是添加
		if (a.getNotepaperId()==null) {
			a.setCreateTime(new Timestamp(System.currentTimeMillis()));
			System.out.println(a);
			nps.insert(a);
		}else {//是修改
			nps.updateByPrimaryKeySelective(a);
		}
		return "redirect:/notepaper/queryAll/"+count;
	}
	
	//删除便签
	@GetMapping("delete/{id}/{count}")
	public String delete(@PathVariable("id")Integer id,@PathVariable("count")Integer count) {
		try {
			nps.deleteByPrimaryKey(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/notepaper/queryAll/"+count;
	}
}
