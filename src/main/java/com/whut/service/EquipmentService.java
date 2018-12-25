package com.whut.service;

import java.util.List;

import com.whut.pojo.Equipment;

public interface EquipmentService {
	public List<Equipment> find(String status,String search);
	
	public void add(Equipment equipment);
	
	public void modifyStatus(String id, String status);
}
