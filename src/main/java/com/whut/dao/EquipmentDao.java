package com.whut.dao;

import java.util.List;
import java.util.Map;

import com.whut.pojo.Equipment;

public interface EquipmentDao {
	
	public List<Equipment> findAll(Map<String, String> map);
	
	public void add(Equipment equipment);
	
	public void modifyStatus(Map<String, String> map);
	
	public Equipment findById(String id);
	
}
