package com.aaa.dao;

import java.util.List;
import java.util.Map;

public interface QianCaiDao {
	List<Map<String,Object>> selCaiType();
	List<Map<String,Object>> selAllCai(int typeid);
}
