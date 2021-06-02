package action;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;
import org.apache.struts2.util.TokenHelper;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements RequestAware,SessionAware,ServletContextAware,ServletResponseAware,ServletRequestAware {
	public Map<String, Object> req;
	public Map<String, Object> session;
	public ServletContext application;
	public HttpServletResponse resp;
	public HttpServletRequest httpreq;
	
	protected String invalidTokenUrl;
	public String getInvalidTokenUrl() {
		return invalidTokenUrl;
	}
	public boolean validToken(){
		//获取请求中的token
		String token = httpreq.getParameter(TokenHelper.DEFAULT_TOKEN_NAME);
		//获取session中的token
		String sessionToken = (String) session.get(TokenHelper.DEFAULT_TOKEN_NAME);
		if(token==null || sessionToken==null){
			return false;
		}else if (token.equals(sessionToken)) {
			//匹配成功后要删除session中的token
			session.remove(TokenHelper.DEFAULT_TOKEN_NAME);
			return true;
		}else{
			return false;
		}
	}
	
	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.req = request;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public void setServletContext(ServletContext context) {
		// TODO Auto-generated method stub
		this.application = context;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		this.resp = arg0;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.httpreq = arg0;
	}

}
