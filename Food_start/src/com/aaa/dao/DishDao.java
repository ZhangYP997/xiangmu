package com.aaa.dao;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Dish;

public interface DishDao {
	void addDish(Dish dish);//添加菜品
	void delDish(Integer id);//通过菜品id删除菜品
	List<Map<String,Object>> findAllDish();//查询所有菜品
	List findType(String name);//通过菜品类别模糊查询
	void updateDish(Integer dish_status,Integer id);//修改菜品状态
}
