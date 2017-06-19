package com.aaa.biz.imp;

import java.util.List;
import java.util.Map;

import com.aaa.biz.QianCaiBiz;
import com.aaa.dao.QianCaiDao;
import com.aaa.dao.Imp.QianCaiDaoImp;
/**
 * 
 * @author уеткф╫
 *
 */
public class QianCaiBizImp implements QianCaiBiz {
private QianCaiDao qcd=new QianCaiDaoImp();
	public List<Map<String, Object>> selCaiType() {
		return qcd.selCaiType();
	}
	public List<Map<String, Object>> selAllCai(int typeid) {
		
		return qcd.selAllCai(typeid);
	}

}
