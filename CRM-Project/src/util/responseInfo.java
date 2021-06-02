package util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class responseInfo {
	public static String res(HttpServletResponse resp,String loc,String path){
		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.print("<script>");
			out.print("alert('"+loc+"');");
			out.print("location.href='"+path+"';");
			out.print("</script>");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static String resAlert(HttpServletResponse resp,String loc){
		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.print("<script>");
			out.print("alert('"+loc+"');");
			out.print("</script>");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static String res(HttpServletResponse resp,String path){
		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.print("<script>");
			out.print("location.href='"+path+"';");
			out.print("</script>");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
