package com.whut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whut.pojo.Equipment;
import com.whut.service.EquipmentService;
import com.whut.service.RepairService;
import com.whut.service.ScrapService;

@Controller
@RequestMapping(value = "/equipment")
public class EquipmentController {
	
	@Autowired
	private EquipmentService equipmentService;
	
	@Autowired
	private RepairService repairService;
	
	@Autowired
	private ScrapService scrapService;
	

	//获取设备
	@RequestMapping(value = "/find", method = RequestMethod.GET)
    public @ResponseBody List<Equipment> find(String status,String info) {
    	return equipmentService.find(status,info);
    }
	
	//申请报修
	@RequestMapping(value = "/repair", method = RequestMethod.GET)
    public @ResponseBody String repair(String id,String responsible) {
		
    	equipmentService.modifyStatus(id, "报修");  //修改设备状态
    	repairService.add(id, responsible); //添加报修申请
    	
    	return "success";
    }
	
	//申请报废
	@RequestMapping(value = "/scrap", method = RequestMethod.GET)
	 public @ResponseBody String scrap(String id,String responsible) {
			
	   
		scrapService.add(id, responsible); //添加报修申请
	    
	    return "success";
	  }
	
	//申请设备报废
	/*@RequestMapping(value = "/add", method = RequestMethod.GET)
	public @ResponseBody String add(String id,String responsible) {
	   scrapService.add(id, responsible);
	   
	   return "success";
	}*/
}
