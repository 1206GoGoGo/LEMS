package com.whut.dao;

import java.util.List;
import java.util.Map;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;

import com.whut.pojo.Buy;

public interface BuyDao {
	 public List<Buy> find(Map<String, String> map);
	 
	 public Buy findById(String id);
	 
	 public void add(Buy buy);
	 
	 public void modify(Map<String, String> map);
}
