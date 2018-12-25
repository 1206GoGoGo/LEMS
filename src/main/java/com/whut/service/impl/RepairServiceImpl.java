package com.whut.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whut.dao.EquipmentDao;
import com.whut.dao.RepairDao;
import com.whut.pojo.Equipment;
import com.whut.pojo.Repair;
import com.whut.service.RepairService;

@Service
public class RepairServiceImpl implements RepairService {
	
	@Autowired
	private RepairDao repairDao;
	
	@Autowired
	private EquipmentDao equipmentDao;

	@Override
	public List<Repair> find(String status, String search, String timeStart, String timeEnd) {
		Map<String, String> map = new HashMap<>();
		map.put("status", status);
		map.put("search", search);
		map.put("timeStart", timeStart);
		map.put("timeEnd", timeEnd);
		return repairDao.find(map);
	}

	@Override
	public void add(String id, String responsible) {
		Map<String, String> map = new HashMap<>();
		map.put("equId", id);
		map.put("responsible", responsible);
		Equipment equipment = equipmentDao.findById(id);
		map.put("name",equipment.getName());  //设备名
		map.put("status","待报修");
		repairDao.add(map);
	}

	@Override
	public List<Repair> findById(String id) {
		
		return repairDao.findById(id);
	}

	@Override
	public void modify(String id,String equId,String repairFactory,String cost,String status) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("repairFactory", repairFactory);
		map.put("cost", cost);
		map.put("status", status);
		repairDao.modify(map);
		
		if(status.equals("已修好")) {
			Map<String, String> map1 = new HashMap<>();
			map1.put("id", equId);
			map1.put("status", "正常");
			equipmentDao.modifyStatus(map1);
		}
		
	}

}
