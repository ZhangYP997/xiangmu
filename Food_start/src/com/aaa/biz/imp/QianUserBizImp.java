package com.aaa.biz.imp;

import java.util.List;
import java.util.Map;

import com.aaa.biz.QianUserBiz;
import com.aaa.dao.QianUserDao;
import com.aaa.dao.Imp.QianUserDaoImp;
import com.aaa.entity.QianUser;

public class QianUserBizImp implements QianUserBiz{
	private QianUserDao qd=new QianUserDaoImp();
	public void adduser(QianUser user) {
		qd.add(user);
		
	}
	public List<Map<String, Object>> checkname(String name) {
		return qd.checkname(name);
	}


}
