package com.aaa.dao;

import java.util.List;
import java.util.Map;

import com.aaa.entity.QianUser;

public interface QianUserDao {
void add(QianUser user);//ÃÌº”ª·‘±
List<Map<String, Object>> checkname(String name);
}
