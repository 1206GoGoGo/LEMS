package com.whut.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whut.dao.EquipmentDao;
import com.whut.pojo.Equipment;
import com.whut.service.EquipmentService;

@Service
public class EquipmentServiceImpl implements EquipmentService {
	
	@Autowired
	private EquipmentDao equipmentDao;
	
	

	@Override
	public List<Equipment> find(String status,String search) {
		
		Map<String, String> map = new HashMap<>();
		map.put("status", status);
		map.put("search", search);
		return equipmentDao.findAll(map);
	}

	@Override
	public void add(Equipment equipment) {
		equipmentDao.add(equipment);
	}

	@Override
	public void modifyStatus(String id, String status) {
		Map<String, String> map = new HashMap<>();
		map.put("status", status);
		map.put("id", id);
	
		equipmentDao.modifyStatus(map);
	}

}
