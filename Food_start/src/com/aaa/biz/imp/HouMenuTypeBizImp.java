package com.aaa.biz.imp;

import com.aaa.biz.HouMenuTypeBiz;
import com.aaa.dao.HouMenuTypeDao;
import com.aaa.dao.Imp.HouMenuTypeDaoImp;
import com.aaa.entity.HouMenuType;


public class HouMenuTypeBizImp implements HouMenuTypeBiz {
	HouMenuTypeDao hmt= new HouMenuTypeDaoImp();
	
	public void addmenu(HouMenuType hmp) {
		// TODO Auto-generated method stub
		hmt.add(hmp);
	}
	
	

}
