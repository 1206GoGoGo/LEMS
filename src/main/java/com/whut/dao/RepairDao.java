package com.whut.dao;

import java.util.List;
import java.util.Map;


import com.whut.pojo.Repair;

public interface RepairDao {
	public List<Repair> find(Map<String, String> map);
	
	public void add(Map<String, String> map);
	
	public List<Repair> findById(String equId);
	
	public void modify(Map<String, String> map);
}
