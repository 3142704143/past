package com.mox.controller.user;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.page.PageMethod;
import com.mox.entity.role.AoaRole;
import com.mox.entity.system.AoaStatusList;
import com.mox.entity.user.AoaUser;
import com.mox.service.role.AoaRoleService;
import com.mox.service.user.AoaDeptService;
import com.mox.service.user.AoaPositionService;
import com.mox.service.user.AoaUserService;
import com.mox.util.util;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;



@Controller
@RequestMapping("AoaUser")
public class AoaUserController {
	
	@Autowired
	private AoaUserService aus;
	private util util=new util();
	
	@Autowired
	private AoaDeptService ads;
	@Autowired
	private AoaPositionService aps;
	@Autowired
	private AoaRoleService ars;
	
	//登录用户
	@RequestMapping("Login")
	public void Login(String yzm,String userName,String pwd,HttpServletRequest req,HttpServletResponse resp) {
		//判断验证码是否正确
		if (yzm.equalsIgnoreCase((String) req.getSession().getAttribute("yzm"))) {
			AoaUser user = new AoaUser();
			user.setUserName(userName);
			user.setPassword(pwd);
			AoaUser u = aus.queryOne(user);
			if (u==null) {//用户名错误
				util.retrundata(resp, "Error");
			}else{
				req.getSession().setAttribute("u", u);
				util.retrundata(resp, "lgoinYes");
			}
		}else{
			util.retrundata(resp, "no");//验证码错误
		}
	}
	
	
	@ExceptionHandler
	public String exceptionHandler(Exception ex,HttpServletRequest req) {
		if(ex instanceof MaxUploadSizeExceededException) {
			req.setAttribute("msg", "文件超出规定大小");
		}else {
			req.setAttribute("msg", ex.getMessage());
		}
		return "redirect:/notepaper/queryAll/1#settings";
	}
	
	//修改个人资料信息
	@RequestMapping("update")
	public String update(AoaUser user,MultipartFile img,HttpServletRequest req,HttpServletResponse resp) throws Exception {
		
		System.out.println("文件名:"+img.getOriginalFilename());
		System.out.println("文件类型:"+img.getContentType());
		System.out.println("文件大小:"+img.getSize());
		if (img.getOriginalFilename()!=null&&img.getSize()>0) {//如果更改了头像
			String type = img.getContentType();
			if (!type.equals("image/jpeg")&&!type.equals("image/jpg")&&!type.equals("image/png")) {
				throw new Exception("文件类型错误");
			}
			ServletContext app = req.getServletContext();
			String path = app.getRealPath("images");
			//随机生成新的文件名
			String newName = UUID.randomUUID().toString().replaceAll("-", "");
			//获取原来文件的扩展名
			String oldName = img.getOriginalFilename();
			String ext = oldName.substring(oldName.lastIndexOf("."));
			String newFileName = path+"/"+newName+ext;
			System.out.println("新的文件保存路径:"+newFileName);
			//待保存的目标文件对象
			File to = new File(newFileName);
			try {
				//文件保存
				FileUtils.copyInputStreamToFile(img.getInputStream(), to);
			} catch (IOException e) {
				e.printStackTrace();
			}
			user.setImgPath(newName+ext);
		}
		
		System.out.println(user);
		if ("".equals(user.getPassword())||user.getPassword()==null) {//如果密码是空的
			user.setPassword(null); 
		}
		aus.updateByPrimaryKeySelective(user);//修改信息
		req.getSession().setAttribute("u", aus.queryOne((AoaUser)req.getSession().getAttribute("u")));//更新一下用户的信息
		//如果修改了密码
		if (!"".equals(user.getPassword()) && user.getPassword()!=null) {
			//清除session
			req.getSession().invalidate();
			util.Topres(resp, "密码已改变，请重新登录", "/OASys/login.jsp");
		}
		return "redirect:/notepaper/queryAll/1#settings";
	}
	
	//退出登录
	@RequestMapping("outLogin")
	public String outLogin(HttpServletRequest req) {
		req.getSession().invalidate();
		return "redirect:/login.jsp";
	}
	
	//修改颜色
	@RequestMapping("updateColor")
	public void updateColor(String color,HttpServletRequest req) {
		System.out.println("aaa");
		AoaUser user = new AoaUser();
		AoaUser u = (AoaUser)req.getSession().getAttribute("u");
		user.setThemeSkin(color);
		user.setUserId(u.getUserId());
		aus.updateByPrimaryKeySelective(user);
	}
	
	//用户管理--->用户管理
	
	//点击时加载所有数据
	@RequestMapping("SelectAll/{count}")
	public String SelectAll(HttpServletRequest req,@PathVariable("count")Integer count) {
		String name = req.getParameter("name");
		PageHelper.startPage(count, 10);
		Page<AoaUser> list = (Page<AoaUser>) aus.queryAll(name);
		PageInfo<AoaUser> pageInfo = new PageInfo<AoaUser>(list);
		System.out.println(pageInfo);
		req.setAttribute("list", pageInfo);
		req.setAttribute("count", count);
		req.setAttribute("name", name);
		return "/usermanage.jsp";
	}
	
	//搜索
	@RequestMapping("Search")
	public String Search(HttpServletRequest req) {
		String name = req.getParameter("name");
		if(name==null||name=="") {
			return "redirect:SelectAll";
		}else {
			Example e = new Example(AoaStatusList.class);
			Criteria c = e.createCriteria();
			c.andLike("statusModel", "%"+name+"%");
					
			List<AoaUser> list = aus.selectByExample(e);
			req.setAttribute("list", list);
		}
		
		return "/statusmanage.jsp";
	}	
	
	//点击修改
		@RequestMapping("toUpdate")
		public String toUpdate(HttpServletRequest req) {
			String id = req.getParameter("id");
			AoaUser au = aus.queryByUserId(Integer.parseInt(id));
			req.setAttribute("au", au);
			req.setAttribute("arsList", ars.selectAll());
			req.setAttribute("apsList", aps.selectAll());
			req.setAttribute("adsList", ads.selectAll());
			return "/useredit.jsp";
		}
		
		
		//修改
		@RequestMapping("Update")
		public String Update(AoaUser au) {
			aus.updateByPrimaryKeySelective(au);
			return "redirect:SelectAll/1?name=";
		}
		
		//删除
		@RequestMapping("Delete")
		public String delete(HttpServletRequest req) {
			String id = req.getParameter("id");
			aus.deleteByPrimaryKey(id);
			return "redirect:SelectAll/1?name=";
		}
		
	//点击新增
	@RequestMapping("toAdd")	
	public String toAdd(HttpServletRequest req) {
		req.setAttribute("arsList", ars.selectAll());
		req.setAttribute("apsList", aps.selectAll());
		req.setAttribute("adsList", ads.selectAll());
		return "/useradd.jsp";
	}
	//新增
	@RequestMapping("Add")
	public String Add(AoaUser au) {
		System.out.println("--------------");
		aus.insertSelective(au);
		return "redirect:SelectAll/1?name=";
	}
}

















