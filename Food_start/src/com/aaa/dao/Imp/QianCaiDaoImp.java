package com.aaa.dao.Imp;

import java.util.List;
import java.util.Map;

import com.aaa.dao.QianCaiDao;
import com.aaa.util.BaseDao;

public class QianCaiDaoImp extends BaseDao implements QianCaiDao {

	public List<Map<String, Object>> selCaiType() {
		String sql="select * from category";
		return executeQuery(sql, null);
	}

	public List<Map<String, Object>> selAllCai(int typeid) {
		String sql="select dishes.dish_id,dishes.dish_name,dishes.dish_price,dishes.dish_poh from category,dishes where category.cate_id=dishes.cate_id and category.cate_id=?";
		Object params[]={typeid};
		return executeQuery(sql, params);
	}

}
