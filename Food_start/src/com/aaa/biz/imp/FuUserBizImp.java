package com.aaa.biz.imp;

import com.aaa.biz.FuUserBiz;
import com.aaa.dao.FuUserDao;
import com.aaa.dao.Imp.FuUserDaoImp;
import com.aaa.entity.FuUser;

public class FuUserBizImp implements FuUserBiz {
	FuUserDao fd=new FuUserDaoImp();
	public void adduser(FuUser user) {
		// TODO Auto-generated method stub
		fd.add(user);
	}

}
