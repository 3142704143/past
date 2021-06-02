package com.mox.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class util {
	/**
	 * 输出一个String
	 * @param resp
	 * @param loc
	 */
	public void retrundata(HttpServletResponse resp,String loc){
		PrintWriter out= null;
		try {
			out = resp.getWriter();
			out.print(loc);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
	}
	
	/**
	 * 弹框并且跳转路径
	 * @param resp
	 * @param loc
	 * @param path
	 */
	public void res(HttpServletResponse resp,String loc,String path){
		PrintWriter out = null;
		try {
			resp.setContentType("text/html;charset=UTF-8");
			out = resp.getWriter();
			out.print("<script>");
			out.print("alert('"+loc+"');");
			out.print("location.href='"+path+"';");
			out.print("</script>");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
	}
	
	public void Topres(HttpServletResponse resp,String loc,String path){
		PrintWriter out = null;
		try {
			resp.setContentType("text/html;charset=UTF-8");
			out = resp.getWriter();
			out.print("<script>");
			out.print("alert('"+loc+"');");
			out.print("top.location.href='"+path+"';");
			out.print("</script>");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
	}
}
