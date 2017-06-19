package com.aaa.biz.imp;

import java.util.List;
import java.util.Map;

import com.aaa.biz.DishBiz;
import com.aaa.dao.DishDao;
import com.aaa.dao.Imp.DishDaoImp;
import com.aaa.entity.Dish;

public class DishBizImp implements DishBiz {
	DishDao dd=new DishDaoImp();
	public void addDish(Dish dish) {
		// TODO Auto-generated method stub
		dd.addDish(dish);
	}

	public void delDish(Integer id) {
		// TODO Auto-generated method stub
		dd.delDish(id);
	}

	public List<Map<String, Object>> findAllDish() {
		// TODO Auto-generated method stub
		return dd.findAllDish();
	}

	public List findType(String name) {
		// TODO Auto-generated method stub
		return dd.findType(name);
	}

	public void updateDish(Integer dish_status, Integer id) {
		// TODO Auto-generated method stub
		dd.updateDish(dish_status, id);
	}

}
