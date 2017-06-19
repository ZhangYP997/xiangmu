package com.aaa.action;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @描述: BaseAction通用控制器
 * @作者: 张运平
 */
public class BaseAction extends ActionSupport {
	private Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
	private Map<String, Object> session = (Map<String, Object>) ActionContext.getContext().getSession();
	HttpServletResponse response=(HttpServletResponse)ServletActionContext.getResponse();
	public HttpServletResponse getResponse() {
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	public Map<String, Object> getRequest() {
		return request;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
   
}
