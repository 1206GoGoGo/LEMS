package com.whut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whut.pojo.Buy;
import com.whut.service.BuyService;

@Controller
@RequestMapping(value = "/buy")
public class BuyController {
	
	@Autowired 
	private BuyService buyService;
	
	//提交新设备申请
	@RequestMapping(value = "/find", method = RequestMethod.GET)
    public @ResponseBody List<Buy> find(String status,String info) {
    	return buyService.find(status,info);
    }
	
	//添加设备申请
	@RequestMapping(value = "/add", method = RequestMethod.POST)
    public @ResponseBody String add(@RequestBody Buy buy) {
		buyService.add(buy);
    	return "success";
    }
	
	//修改设备状态
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
    public @ResponseBody String modify(String id,String status) {
		buyService.modify(id, status);
    	return "success";
    }
}
