package com.whut.service;

import java.util.List;


import com.whut.pojo.Scrap;

public interface ScrapService {

	public List<Scrap> find(String status,String search,String timeStart,String timeEnd);
	
	public void add(String id, String responsible);
	
	public void modify(String id,String equId,String status);
	
	public List<Scrap> findById(String id);
}
