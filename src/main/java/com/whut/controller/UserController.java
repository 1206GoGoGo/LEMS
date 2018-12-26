package com.whut.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whut.pojo.Poly;
import com.whut.pojo.User;
import com.whut.service.UserService;

/**
 * 用户控制器
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
   
    @Autowired
    private UserService userService;
    
    
    @RequestMapping(value = "/findAll", method = RequestMethod.GET)
    public @ResponseBody List<User> findAll() {
    	return userService.findAll();
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody Poly login(@RequestBody User user) {
    	
    	Poly poly = new Poly();
    	
		if(userService.vertify(user)) {
			User user1 = userService.findByUsername(user.getUsername());
			user1.setPassword("");
			poly.setCode("200");
			poly.setMessage("登录成功");
			poly.setData(user1);
        	return poly;
		}		
        else {
        	poly.setCode("404");
			poly.setMessage("登录失败");
        	return poly;
        }
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public @ResponseBody Poly register(@RequestBody User user) {
    	Poly poly = new Poly();
        if(userService.add(user)) {
        	poly.setCode("200");
			poly.setMessage("注册成功");
			return poly;
        }
        else {
        	poly.setCode("404");
			poly.setMessage("注册失败");
			return poly;
        }	
    }
}



