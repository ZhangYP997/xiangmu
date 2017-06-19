package com.aaa.dao.Imp;

import com.aaa.dao.HouMenuTypeDao;
import com.aaa.entity.HouMenuType;
import com.aaa.util.BaseDao;

public class HouMenuTypeDaoImp extends BaseDao implements HouMenuTypeDao {

	public void add(HouMenuType mete) {
		System.out.println("1111111");
		// TODO Auto-generated method stub
		String sql="insert into category(cate_name) values(?)";
		System.out.println(mete.getCate_name());
		Object[] params={mete.getCate_name()};
		Boolean a = executeUpdate(sql, params);
		System.out.println(a);
	}

}
