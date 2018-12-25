package com.whut.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whut.dao.BuyDao;
import com.whut.dao.EquipmentDao;
import com.whut.pojo.Buy;
import com.whut.pojo.Equipment;
import com.whut.service.BuyService;

@Service
public class BuyServiceImpl implements BuyService{
	
	@Autowired 
	private BuyDao buyDao;
	
	@Autowired
	private EquipmentDao equipmentDao;

	@Override
	public List<Buy> find(String status,String search) {
		Map<String, String> map = new HashMap<>();
		map.put("status", status);
		map.put("search", search);
		return buyDao.find(map);
	}

	@Override
	public void add(Buy buy) {
		buyDao.add(buy);
	}

	@Override
	public void modify(String id, String status) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("status", status);
		buyDao.modify(map);
		
		
		if(status.equals("已购买")) {
			Buy buy = buyDao.findById(id);
			
			Equipment equipment = new Equipment();
			equipment.setCategory(buy.getCategory());
			equipment.setName(buy.getName());
			equipment.setType(buy.getType());
			equipment.setSize(buy.getSize());
			equipment.setPrice(buy.getPrice());
			equipment.setManufacturer(buy.getManufacturer());
			equipment.setExpirationdate(buy.getExpirationdate());
			equipment.setOperator(buy.getOperator());
			equipment.setStatus("正常");
				
			
			int count = buy.getCount();
			for(int i = 0;i<count;i++) { //将购买的设备添加到设备表中
				equipmentDao.add(equipment);
			}
		}
	}

	

}
