package com.aaa.action;

import com.aaa.biz.HouMenuTypeBiz;
import com.aaa.biz.imp.HouMenuTypeBizImp;
import com.aaa.entity.HouMenuType;
import com.opensymphony.xwork2.ModelDriven;

public class HouMenuAction extends BaseAction implements ModelDriven<HouMenuType>{
	private HouMenuType hmp = new HouMenuType();
	private HouMenuTypeBiz hmtb = new HouMenuTypeBizImp();
	public HouMenuType getHmp() {
		return hmp;
	}
	public void setHmp(HouMenuType hmp) {
		this.hmp = hmp;
	}
	public HouMenuType getModel() {
		// TODO Auto-generated method stub
		return hmp;
	}
	//添加菜品种类
	public String addmenu(){
		System.out.println("-----addmenu-------");
		hmtb.addmenu(hmp);
		return "to_type";
	}
}
