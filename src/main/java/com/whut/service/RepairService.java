package com.whut.service;

import java.util.List;

import com.whut.pojo.Repair;

public interface RepairService {

	public List<Repair> find(String status,String search,String timeStart,String timeEnd);
	
	public void add(String id, String responsible);
	
	public List<Repair> findById(String id);
	
	public void modify(String id,String equId,String repairFactory,String cost,String status);
}
