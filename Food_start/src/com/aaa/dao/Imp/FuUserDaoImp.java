package com.aaa.dao.Imp;

import com.aaa.dao.FuUserDao;
import com.aaa.entity.FuUser;
import com.aaa.util.BaseDao;

public class FuUserDaoImp extends BaseDao implements FuUserDao {

	public void add(FuUser user) {
		// TODO Auto-generated method stub
		String sql="insert into back_user(cus_id,cus_username,cus_password) values(?,?,?)";
		Object[] params={user.getCus_id(),user.getCus_username(),user.getCus_password()};
		Boolean a=executeUpdate(sql, params);
		System.out.println(a);
	}

}
