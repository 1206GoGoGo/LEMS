package com.whut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whut.pojo.Scrap;
import com.whut.service.ScrapService;

@Controller
@RequestMapping(value = "/scrap")
public class ScrapController {
	
	@Autowired
	private ScrapService scrapService;
	
	
	//查看报废记录
	@RequestMapping(value = "/find", method = RequestMethod.GET)
    public @ResponseBody List<Scrap> find(String status,String info,String timeStart,String timeEnd) {
    	return scrapService.find(status,info,timeStart,timeEnd);
    }
	
	//设备报废申请成功后修改设备状态
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
    public @ResponseBody String modify(String id,String equId, String status) {
    	scrapService.modify(id,equId,status);   //报废表
    	return "success";
    }
	
	//通过设备id获取报废信息
	@RequestMapping(value = "/findById", method = RequestMethod.GET)
    public @ResponseBody List<Scrap> findById(String id) {
		
		return scrapService.findById(id);
	}
}
