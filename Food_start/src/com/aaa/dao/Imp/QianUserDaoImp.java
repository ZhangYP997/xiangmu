package com.aaa.dao.Imp;

import java.util.List;
import java.util.Map;

import com.aaa.dao.QianUserDao;
import com.aaa.entity.QianUser;
import com.aaa.util.BaseDao;

public class QianUserDaoImp extends BaseDao implements QianUserDao {
//添加前台用户
	public void add(QianUser user) {
		String sql="insert into pro_user(pro_username,pro_password,pro_shouji) values(?,?,?)";
		Object[] params={user.getPro_username(),user.getPro_password(),user.getPro_shouji()};
		executeUpdate(sql, params);
	}
//查询用户名
	public List<Map<String, Object>> checkname(String name) {
		String sql="select * from pro_user where pro_username=?";
		Object[] params={name};
		return executeQuery(sql,params);
	}
	

}
