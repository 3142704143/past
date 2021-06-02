package util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class AjaxReturnData {
	public static void retrundata(HttpServletResponse resp,String loc){
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
}
