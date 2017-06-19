package com.aaa.dao.Imp;

import java.util.List;
import java.util.Map;

import com.aaa.dao.DishDao;
import com.aaa.entity.Dish;
import com.aaa.util.BaseDao;

public class DishDaoImp extends BaseDao implements DishDao {
	//Ìí¼Ó²ËÆ·
	public void addDish(Dish dish) {
		// TODO Auto-generated method stub
		String sql="insert into dishes values(?,?,?,?,?)";
		Object[] params={dish.getCate_id(),dish.getDish_name(),dish.getDish_price(),dish.getDish_poh(),dish.getDish_status()};		
		executeUpdate(sql, params);
		
	}
	//É¾³ý
	public void delDish(Integer id) {
		// TODO Auto-generated method stub
		String sql="delete from dishes where dish_id=?";
		Object[] params={id};
		executeUpdate(sql, params);
	}
	//²éÕÒ
	public List<Map<String, Object>> findAllDish() {
		// TODO Auto-generated method stub
		String sql="select ds.dish_id,cg.cate_name,ds.dish_name,ds.dish_price,ds.dish_poh,state_ta.state_name from dishes ds,category cg,state_ta where ds.cate_id=cg.cate_id and ds.dish_status=state_ta.state_id";
		
		return executeQuery(sql, null);
	}
	//Ä£ºý²éÑ¯
	public List findType(String name) {
		// TODO Auto-generated method stub
		String sql="select ds.dish_id,cg.cate_name,ds.dish_name,ds.dish_price,ds.dish_poh,state_ta.state_name from dishes ds,category cg,state_ta where ds.cate_id=cg.cate_id and ds.dish_status=state_ta.state_id and(cg.cate_name like '%"+name+"%') order by dish_id desc" ;
		return executeQuery(sql, null);
	}
	//ÐÞ¸Ä×´Ì¬
	public void updateDish(Integer dish_status,Integer id) {
		// TODO Auto-generated method stub
		String sql="update dishes set dish_status=? where dish_id=?";
		Object[] params={dish_status,id};
		executeUpdate(sql, params);
	}
	
}
