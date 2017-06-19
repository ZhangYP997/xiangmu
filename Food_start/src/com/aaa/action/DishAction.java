package com.aaa.action;

import java.util.List;
import java.util.Map;

import com.aaa.biz.DishBiz;
import com.aaa.biz.imp.DishBizImp;
import com.aaa.entity.Dish;
import com.opensymphony.xwork2.ModelDriven;

public class DishAction extends BaseAction implements ModelDriven<Dish> {
	private Dish dish=new Dish();
	DishBiz  db=new DishBizImp();
	private String cate_name;
	
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public Dish getDish() {
		return dish;
	}
	public void setDish(Dish dish) {
		this.dish = dish;
	}
	public DishBiz getDb() {
		return db;
	}
	public void setDb(DishBiz db) {
		this.db = db;
	}
	public Dish getModel() {
		// TODO Auto-generated method stub
		return dish;
	}
	
	//增加菜品
	public String addDish(){
		db.addDish(dish);
		return "to_findAllDish";
	}
	
	//查询菜品
	public String findAllDish(){
		List<Map<String, Object>> dishmap=db.findAllDish();
		getSession().put("objList", dishmap);
		return "showdish";
	}
	
	//删除
	public String delDishById(){
		db.delDish(dish.getDish_id());
		return "to_findAllDish";
	}
	//修改状态
	public String updateDishById(){
		db.updateDish(dish.getDish_status(), dish.getDish_id());
		return "to_findAllDish";
	}
	//通过菜品名字模糊查询
	public String MofindType(){
		List<Map<String, Object>> findtype=db.findType(cate_name);
		getRequest().put("objList", findtype);
		return "showdish";
	}
}
