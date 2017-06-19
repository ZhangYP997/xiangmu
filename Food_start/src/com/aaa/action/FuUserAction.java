package com.aaa.action;

import java.util.ArrayList;
import java.util.List;

import com.aaa.biz.FuUserBiz;
import com.aaa.biz.imp.FuUserBizImp;
import com.aaa.entity.FuUser;
import com.aaa.entity.QianUser;
import com.opensymphony.xwork2.ModelDriven;

public class FuUserAction extends BaseAction implements ModelDriven<FuUser>{
	private FuUser user=new FuUser();
	private FuUserBiz fub=new FuUserBizImp();
	
	
	public FuUser getUser() {
		return user;
	}


	public void setUser(FuUser user) {
		this.user = user;
	}


	public FuUser getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	public String adduser(){
		fub.adduser(user);
		return "to_edit";
	}
}
