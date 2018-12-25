package com.whut.dao;

import java.util.List;
import java.util.Map;

import com.whut.pojo.Scrap;

public interface ScrapDao {
	
	public List<Scrap> find(Map<String, String> map);
	
	public List<Scrap> findById(String equId);

	public void add(Map<String, String> map);
	
	public void modify(Map<String, String> map);
}