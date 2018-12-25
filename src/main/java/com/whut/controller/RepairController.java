package com.whut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whut.pojo.Repair;
import com.whut.service.RepairService;

@Controller
@RequestMapping(value = "/repair")
public class RepairController {
	
	@Autowired
	private RepairService repairService;
	
	//查看修理记录
	@RequestMapping(value = "/find", method = RequestMethod.GET)
    public @ResponseBody List<Repair> find(String status,String info,String timeStart,String timeEnd) {
    	return repairService.find(status,info,timeStart,timeEnd);
    }
	
	//通过设备equId获取报修记录
	@RequestMapping(value = "/findById", method = RequestMethod.GET)
    public @ResponseBody List<Repair> findById(String id) {
		
		return repairService.findById(id);
	}
	
	//处理修理状态
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
    public @ResponseBody String modify(String id,String equId,String repairFactory,String cost,String status) {
		repairService.modify(id,equId, repairFactory, cost,status);
		return "success";
	}
}
