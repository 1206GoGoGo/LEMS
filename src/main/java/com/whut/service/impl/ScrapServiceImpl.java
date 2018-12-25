package com.whut.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whut.dao.EquipmentDao;
import com.whut.dao.ScrapDao;
import com.whut.pojo.Equipment;
import com.whut.pojo.Scrap;
import com.whut.service.ScrapService;

@Service
public class ScrapServiceImpl implements ScrapService {
	@Autowired
	private ScrapDao scrapDao;
	
	@Autowired
	private EquipmentDao equipmentDao;

	//查询
	@Override
	public List<Scrap> find(String status, String search, String timeStart, String timeEnd) {
		Map<String, String> map = new HashMap<>();
		map.put("status", status);
		map.put("search", search);
		map.put("timeStart", timeStart);
		map.put("timeEnd", timeEnd);
		return scrapDao.find(map);
	}

	//申请报废
	@Override
	public void add(String id, String responsible) {
		Map<String, String> map = new HashMap<>();
		map.put("equId", id);
		map.put("responsible", responsible);
		Equipment equipment = equipmentDao.findById(id);
		map.put("price",equipment.getPrice().toString());
		map.put("name",equipment.getName());  //设备名
		map.put("status","待审批"); 
		scrapDao.add(map);
	}

	@Override
	public void modify(String id,String equId,String status) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("status", status);
		scrapDao.modify(map);
		
		if(status.equals("审批通过")) {
			Map<String, String> map1 = new HashMap<>();
			map1.put("id", equId);
			map1.put("status", "报废");
			equipmentDao.modifyStatus(map1); //修改设备表汇总设备的状态
		}
		
	}

	@Override
	public List<Scrap> findById(String id) {
		
		return scrapDao.findById(id);
	}
	
}
