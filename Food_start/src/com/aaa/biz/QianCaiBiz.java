package com.aaa.biz;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author уеткф╫
 *
 */
public interface QianCaiBiz {
	List<Map<String,Object>> selCaiType();
	List<Map<String,Object>> selAllCai(int typeid);
}
