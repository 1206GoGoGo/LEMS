package com.whut.service;

import java.util.List;

import com.whut.pojo.Buy;

public interface BuyService {
	
	public List<Buy> find(String status,String search);
	
	public void add(Buy buy);
	
	public void modify(String id,String status);
}
