package com.aaa.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import org.apache.struts2.ServletActionContext;

import sun.org.mozilla.javascript.internal.ContextAction;

import com.aaa.biz.QianUserBiz;
import com.aaa.biz.imp.QianUserBizImp;
import com.aaa.entity.QianUser;
import com.opensymphony.xwork2.ModelDriven;
/**
 * @描述：前台用户业务控制层
 * @作者：张运平
 */
public class QianUserAction extends BaseAction implements ModelDriven<QianUser>{

	private QianUser user=new QianUser();
	private QianUserBiz qub=new QianUserBizImp();
	public QianUser getUser() {
		return user;
	}

	public void setUser(QianUser user) {
		this.user = user;
	}

	public QianUser getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	//添加用户
	public String adduser(){
		qub.adduser(user);
		return "to_login";
	}
	//查询用名在数据库中是否存在
	public void checkname(){
		List<Map<String, Object>> telList =	qub.checkname(user.getPro_username());
		try {
			if (telList.size()==0) {
				super.getResponse().getWriter().print("true");
			}else{
				super.getResponse().getWriter().print("false");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//登录
	public void userdenglu(){
		List<Map<String, Object>> telList =	qub.checkname(user.getPro_username());
		if(telList.size()!=0){
			System.out.println(telList.size());
			String upass=(String) telList.get(0).get("pro_password");
			if(upass.equals(user.getPro_password())){
				try {
					super.getResponse().getWriter().print("true");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}else{
			try {
				super.getResponse().getWriter().print("false");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

}
